<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/user_signup.js"></script>
<title>signup</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>회원가입</span>
		</div>
		
		<div id="signup">
			<form action="/signup" method="post">
				<div id="signup2">
					<div class="signup2_info">
						<input type="text" placeholder="아이디(메일주소)" name="id">
						<label class="checkBtn" id="idBtn">중복 확인</label>
						<span id="sid"></span><br>
						<span id="sid2"></span>					
					</div>
					
					<div class="signup2_info">
						<input type="password" placeholder="비밀번호" name="pw">
						<br><span id="spw"></span>					
					</div>
				
					<div class="signup2_info">
						<input type="password" placeholder="비밀번호 재확인" name="pw2">
						<br><span id="spw2"></span>					
					</div>

					<div class="signup2_info">
						<input type="text" placeholder="이름" name="name">
						<br><span id="sna"></span>					
					</div>
					
					<div>
						<input type="tel" class="signup_tel" name="phone1" placeholder="010">-
						<input type="tel" class="signup_tel" name="phone2">-
						<input type="tel" class="signup_tel" name="phone3">
						<input type="hidden" id="totalphone" name="phone" value="">
						<br><span id="sph"></span>			
					</div>
					<input type="submit" value="회원가입" id="signupBtn">
				</div>
			</form>
			<div id="signup_another">
				<div id="signup_naver">네이버<br>간편가입</div>
				<div id="signup_kakao">카카오<br>간편가입</div>
			</div>
		</div><!-- signup -->
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>