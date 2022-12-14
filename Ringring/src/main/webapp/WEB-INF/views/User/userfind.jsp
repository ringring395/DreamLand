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
<title>DreamLand๐ฆ</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>์์ด๋ / ๋น๋ฐ๋ฒํธ ์ฐพ๊ธฐ</span>
		</div>
		
		<div id="userfind">
			<div id="find_messege">
				<p>์์ด๋, ๋น๋ฐ๋ฒํธ๊ฐ ์๊ฐ๋์ง ์์ผ์ธ์?<br>
				ํ์์ ๋ณด๋ฅผ ์๋ ฅํ์  ํ ์ฐพ๊ธฐ ๋ฒํผ์ ํด๋ฆญํด์ฃผ์ธ์.</p>
			</div>
		
			<div id="find_click">
				<div id="findID_click"><img alt="์ ์ " src="../resources/img/icon/user.png">์์ด๋ ์ฐพ๊ธฐ </div>
				<div id="findPW_click"><img alt="์ ์ " src="../resources/img/icon/pw.png">๋น๋ฐ๋ฒํธ ์ฐพ๊ธฐ </div>
			</div>
			<form method="post">
			<div id="find_info">
				<div id="findID">
					<input type="text" class="find_input" id="findid_name" name="findid_name" placeholder="์ด๋ฆ"><br>
					<span id="s_findid_name"></span>
					<input type="tel" class="find_tel" name="phone1" id="findid_phone1" placeholder="010">-
					<input type="tel" class="find_tel" name="phone2" id="findid_phone2" >-
					<input type="tel" class="find_tel" name="phone3" id="findid_phone3" ><br>
					<span id="s_findid_phone"></span>
					<input type="hidden" id="findid_totalphone" name="findid_totalphone">
					<input type="submit" id="findIDBtn" value="์์ด๋ ์ฐพ๊ธฐ" formaction="/userfind_id">
					
					<!-- ์์ด๋ ์ฐพ๊ธฐ ๊ฒฐ๊ณผ ์ถ๋ ฅ -->
					<c:choose>
						<c:when test="${check == 1}">
							<p>์ด๋ฆ ํน์ ์ ํ๋ฒํธ๋ฅผ ๋ค์ ํ์ธํด์ฃผ์ธ์.</p>
						</c:when>				
						<c:when test="${check == 0}">
							<p>์ฐพ์ผ์๋ ์์ด๋๋ ${findid.id}์๋๋ค.</p>
						</c:when>	
					</c:choose>			
										
					<div class="f_signupBtnDiv">
						<button class="find_signupBtn" onclick="location.href='../signup'">ํ์๊ฐ์</button>
					</div>
				</div>
				
				<div id="findPW">
					<input type="text" class="find_input" id="findpw_id" name="findpw_id" placeholder="์์ด๋(๋ฉ์ผ์ฃผ์)"><br>
					<span id="s_findpw_id"></span>
					<input type="text" class="find_input" id="findpw_name" name="findpw_name" placeholder="์ด๋ฆ"><br>
					<span id="s_findpw_name"></span>
					<input type="tel" class="find_tel" name="phone1" id="findpw_phone1" placeholder="010">-
					<input type="tel" class="find_tel" name="phone2" id="findpw_phone2" >-
					<input type="tel" class="find_tel" name="phone3" id="findpw_phone3" ><br>
					<span id="s_findpw_phone"></span>
					<input type="hidden" id="findpw_totalphone" name="findpw_totalphone">
					<input type="submit" id="findPWBtn" value="๋น๋ฐ๋ฒํธ ์ฐพ๊ธฐ" formaction="/userfind_pw">
					
					<!-- ๋น๋ฒ ์ฐพ๊ธฐ ๊ฒฐ๊ณผ ์ถ๋ ฅ -->
					<c:choose>
						<c:when test="${check2 == 1}">
							<p>์ผ์นํ๋ ํ์์ด ์์ต๋๋ค.</p>
						</c:when>
						
						<c:when test="${check2 == 0}">
							<p>์ฐพ์ผ์๋ ๋น๋ฐ๋ฒํธ๋ 
						    <c:if test="${fn:length(findpw.pw) >= 3}">
						      <!-- ๋น๋ฒ์ ์ 2์๋ฆฌ๊น์ง ๋ณด์ฌ ์ฃผ๊ณ  -->
						      ${fn:substring(findpw.pw,0,2)}
						      <!-- 3์๋ฆฌ๋ถํฐ ๋น๋ฒ์ ๊ธธ์ด๋งํผ *๋ฅผ ์ฐ์ด์ค -->
						      <c:forEach begin="3" end="${fn:length(findpw.pw)}" step="1">*</c:forEach>
						    </c:if>
						   	 ์๋๋ค.</p>
						</c:when>	
					</c:choose>						
										
					<div class="f_signupBtnDiv">
						<button class="find_signupBtn" onclick="location.href='../signup'">ํ์๊ฐ์</button>
					</div>
				</div>
			</div><!-- find_info -->
			</form>
		</div><!-- userfind -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>