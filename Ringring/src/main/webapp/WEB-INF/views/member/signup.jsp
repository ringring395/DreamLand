<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/member.css">
<title>signup</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>
	<div id="wrap">
		<div id="signup">
		회원가입
			<form action="/signup" method="post">
				<table id="signup_table">
					<tr>
						<td>
							<input type="text" placeholder="아이디(메일주소)" name="id">
							<button>중복 확인</button>
							<span id="sid"></span>
						</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="비밀번호" name="pw">
							<span id="spw"></span>
						</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="비밀번호 재확인" name="pw2">
							<span></span>
						</td>
					</tr>			
					<tr>
						<td><input type="text" placeholder="이름" name="name">
							<span id="sna"></span></td>
					</tr>
					<tr>
						<td id="signup_tel">
							<input type="tel" name="phone1" placeholder="010">-
							<input type="tel" name="phone2">
							<input type="tel" name="phone3">
							<button>중복 확인</button>
						</td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="회원가입"></td>
					</tr>
				</table>
			</form>
			<hr>
			<div id="signup_another">
				<div id="signup_naver">네이버<br>간편가입</div>
				<div id="signup_kakao">카카오<br>간편가입</div>
			</div>
		</div><!-- signup -->
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>