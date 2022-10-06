<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/member.css">
<title>memberfind</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>아이디 / 비밀번호 찾기</span>
		</div>
		
		<div id="memberfind">
			<div id="find_messege">
				<p>아이디, 비밀번호가 생각나지 않으세요?<br>
				회원정보를 입력하신 후 찾기 버튼을 클릭해주세요.</p>
			</div>
		
			<!-- 버튼 클릭하면 아래에 해당 내용 출력됨 -->
			<div id="find_click">
				<div id="findID_click">아이디 찾기</div>
				<div id="findPW_click">비밀번호 찾기</div>
			</div>
			
			<div id="find_info">
				<div id="findID">
					<input type="text" class="find_input" placeholder="이름"><br>
					<input type="tel" class="find_tel" name="phone1" placeholder="010">-
					<input type="tel" class="find_tel" name="phone2">-
					<input type="tel" class="find_tel" name="phone3"><br>
					<input type="submit" id="findIDBtn" value="아이디 찾기">
					<div class="f_signupBtnDiv">
						<button class="find_signupBtn" onclick="location.href='../signup'">회원가입</button>
					</div>
				</div>
				
				<div id="findPW">
					<input type="text" class="find_input" placeholder="아이디(메일주소)"><br>
					<input type="text" class="find_input" placeholder="이름"><br>
					<input type="tel" class="find_tel" name="phone1" placeholder="010">-
					<input type="tel" class="find_tel" name="phone2">-
					<input type="tel" class="find_tel" name="phone3"><br>
					<input type="submit" id="findPWBtn" value="비밀번호 찾기">
					<div class="f_signupBtnDiv">
						<button class="find_signupBtn" onclick="location.href='../signup'">회원가입</button>
					</div>
				</div>
			</div><!-- find_info -->
		</div><!-- memberfind -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>