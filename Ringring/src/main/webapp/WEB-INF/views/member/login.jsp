<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/login.js"></script>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="loginjsp">
		<div id="m_login">
		<form action="/member/login" method="post">
			<table>
				<tr>
					<td>
						<div>유저모양</div>
						<input type="text" id="ii" name="id" placeholder="아이디(메일주소)">
					</td>
				</tr>
				<tr>
					<td><span id="si"></span></td>
				</tr>
				<tr>
					<td>
						<div>비번모양</div>
						<input type="password" id="ip" name="pw"
						placeholder="password"></td>
				</tr>
				<tr>
					<td><span id="sp"></span></td>
				</tr>
				<tr>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>			
		</form>
		</div>

		<div id="m_gofind">
			<div id="m_gofind_id" onclick="location.href='../member/memberfind'">
				<button>아이디 찾기</button>
			</div>
			<div id="m_gofind_pw" onclick="location.href='../member/memberfind'">
				<button>비밀번호 찾기</button>
			</div>			
		</div>
		
		<div id="m_loginapi">
			<div id="m_login_naver">
				<button>네이버 로그인</button>
			</div>
			<div id="m_login_kakao">
				<button>카카오 로그인</button>
			</div>			
		</div>
		
		<button id="m_signup" onclick="location.href='../member/signup'">회원가입</button>
	</div>
</body>
</html>