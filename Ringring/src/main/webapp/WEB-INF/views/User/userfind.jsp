<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/user_find.js"></script>
<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>아이디 / 비밀번호 찾기</span>
		</div>
		
		<div id="userfind">
			<div id="find_messege">
				<p>아이디, 비밀번호가 생각나지 않으세요?<br>
				회원정보를 입력하신 후 찾기 버튼을 클릭해주세요.</p>
			</div>
		
			<div id="find_click">
				<div id="findID_click"><img alt="유저" src="../resources/img/icon/user.png">아이디 찾기 </div>
				<div id="findPW_click"><img alt="유저" src="../resources/img/icon/pw.png">비밀번호 찾기 </div>
			</div>
			<form method="post">
			<div id="find_info">
				<div id="findID">
					<input type="text" class="find_input" id="findid_name" name="findid_name" placeholder="이름"><br>
					<span id="s_findid_name"></span>
					<input type="tel" class="find_tel" name="phone1" id="findid_phone1" placeholder="010">-
					<input type="tel" class="find_tel" name="phone2" id="findid_phone2" >-
					<input type="tel" class="find_tel" name="phone3" id="findid_phone3" ><br>
					<span id="s_findid_phone"></span>
					<input type="hidden" id="findid_totalphone" name="findid_totalphone">
					<input type="submit" id="findIDBtn" value="아이디 찾기" formaction="/userfind_id">
					
					<!-- 아이디 찾기 결과 출력 -->
					<c:choose>
						<c:when test="${check == 1}">
							<p>이름 혹은 전화번호를 다시 확인해주세요.</p>
						</c:when>
						
						<c:when test="${check == 0}">
							<p>찾으시는 아이디는 ${findid.id}입니다.</p>
						</c:when>	
					</c:choose>			
										
					<div class="f_signupBtnDiv">
						<button class="find_signupBtn" onclick="location.href='../signup'">회원가입</button>
					</div>
				</div>
				
				<div id="findPW">
					<input type="text" class="find_input" id="findpw_id" name="findpw_id" placeholder="아이디(메일주소)"><br>
					<span id="s_findpw_id"></span>
					<input type="text" class="find_input" id="findpw_name" name="findpw_name" placeholder="이름"><br>
					<span id="s_findpw_name"></span>
					<input type="tel" class="find_tel" name="phone1" id="findpw_phone1" placeholder="010">-
					<input type="tel" class="find_tel" name="phone2" id="findpw_phone2" >-
					<input type="tel" class="find_tel" name="phone3" id="findpw_phone3" ><br>
					<span id="s_findpw_phone"></span>
					<input type="hidden" id="findpw_totalphone" name="findpw_totalphone">
					<input type="submit" id="findPWBtn" value="비밀번호 찾기" formaction="/userfind_pw">
					
					<!-- 비번 찾기 결과 출력 -->
					<c:choose>
						<c:when test="${check2 == 1}">
							<p>일치하는 회원이 없습니다.</p>
						</c:when>
						
						<c:when test="${check2 == 0}">
							<p>찾으시는 비밀번호는 
						    <c:if test="${fn:length(findpw.pw) >= 3}">
						      <!-- 비번의 앞 2자리까지 보여 주고 -->
						      ${fn:substring(findpw.pw,0,2)}
						      <!-- 3자리부터 비번의 길이만큼 *를 찍어줌 -->
						      <c:forEach begin="3" end="${fn:length(findpw.pw)}" step="1">*</c:forEach>
						    </c:if>
						   	 입니다.</p>
						</c:when>	
					</c:choose>						
										
					<div class="f_signupBtnDiv">
						<button class="find_signupBtn" onclick="location.href='../signup'">회원가입</button>
					</div>
				</div>
			</div><!-- find_info -->
			</form>
		</div><!-- userfind -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>