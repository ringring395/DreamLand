<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/user_signup.js"></script>
<title>DreamLand๐ฆ</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>๋ก๊ทธ์ธ</span>
		</div>
		<div id="login">
		
		<form action="/login" method="post">
		<div id="login2">
			<div class="login2_info">
				<img alt="์ ์ " src="../resources/img/icon/user.png">
				<input type="text" name="id" placeholder="์์ด๋(๋ฉ์ผ์ฃผ์)">
				<br><span id="sid"></span>
			</div>
			
			
			<div class="login2_info">
				<img alt="๋น๋ฒ" src="../resources/img/icon/pw.png">
				<input type="password" name="pw" placeholder="password">
				<br><span id="spw"></span>
			</div>
						
			
			<input type="submit" id="loginBtn" value="๋ก๊ทธ์ธ" >
		</div><!-- login2 -->
		</form>
		
		<div id="loginfind">
			<a href="../userfind">
			<span>์์ด๋ / ๋น๋ฐ๋ฒํธ๊ฐ ์๊ฐ๋์ง ์์ผ์ธ์?</span>
			</a>	
		</div>
		
		<div id="loginapi" style="display:none;">
			<div id="login_naver">
				<button>๋ค์ด๋ฒ<br>๋ก๊ทธ์ธ</button>
			</div>
			<div id="login_kakao">
				<button>์นด์นด์ค<br>๋ก๊ทธ์ธ</button>
			</div>			
		</div>
		
		<button id="login_signupBtn" onclick="location.href='../signup'">ํ์๊ฐ์</button>
	</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>