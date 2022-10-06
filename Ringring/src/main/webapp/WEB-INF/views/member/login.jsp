<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/member.css">
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
		<div >
		<form action="/member/login" method="post">
			<table id="login_table">
				<tr>
					<td>
						유저
						<input type="text" id="ii" name="id" placeholder="아이디(메일주소)">
						<span id="si"></span>
					</td>
				</tr>
				<tr>
					<td>
						비번
						<input type="password" id="ip" name="pw" placeholder="password">
						<span id="sp"></span>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="로그인" id="loginBtn"></td>
				</tr>
			</table>			
		</form>
		</div>

		<div id="loginfind">
			<a href="../memberfind">
			<span>아이디 / 비밀번호를 잊으셨나요?</span>
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
		
		<button id="login_signup" onclick="location.href='../member/signup'">회원가입</button>
	</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>