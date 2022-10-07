<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/user.css">
<title>login</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/login.js"></script>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>로그인</span>
		</div>
		<div id="login">
		
		<form action="/login" method="post">
		<div id="login2">
			<div class="login2_info">
				<img alt="유저" src="">
				<input type="text" id="ii" name="id" placeholder="아이디(메일주소)">
			</div>
			<span id="si" class="login_messege"></span>
			
			<div class="login2_info">
				<img alt="비번" src="">
				<input type="password" id="ip" name="pw" placeholder="password">
			</div>
			<span id="sp" class="login_messege"></span>			
			
			<input type="submit" id="loginBtn" value="로그인" >
		</div><!-- login2 -->
		</form>
		
		<div id="loginfind">
			<a href="../userfind">
			<span>아이디 / 비밀번호가 생각나지 않으세요?</span>
			</a>	
		</div>
		
		<div id="loginapi">
			<div id="login_naver">
				<button>네이버<br>로그인</button>
			</div>
			<div id="login_kakao">
				<button>카카오<br>로그인</button>
			</div>			
		</div>
		
		<button id="login_signupBtn" onclick="location.href='../signup'">회원가입</button>
	</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>