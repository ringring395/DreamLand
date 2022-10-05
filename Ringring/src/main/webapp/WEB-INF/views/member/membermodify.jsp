<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>

	<form action="/member/membermodify" method="post">
		<table>
			<tr>
				<td>
					<input type="text" placeholder="아이디(메일주소)" name="id">
					<span>변경불가</span>
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
				<td>
					<input type="tel" name="phone1" placeholder="010">-
					<input type="tel" name="phone2">
					<input type="tel" name="phone3">
					<button>중복 확인</button>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="정보수정"></td>
			</tr>
		</table>
	</form>
	<hr>
	<button>회원 탈퇴</button>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>