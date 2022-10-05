<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberfind</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>

	<div id="m_find_info">
		<h4>아이디/비밀번호 찾기</h4>
		<p>아이디, 비밀번호가 생각나지 않으세요?</p>
		<p>회원정보를 입력하신 후 확인 버튼을 클릭해주세요.</p>
	</div>

	<!-- 버튼 클릭하면 아래에 해당 내용 출력됨 -->
	<div id="m_find_click">
		<div id="m_findID_click">아이디 찾기</div>
		<div id="m_findPW_click">비밀번호 찾기</div>
	</div>

	<div id="m_findID">
		<input type="text" placeholder="이름">
		<input type="tel" name="phone1" placeholder="010">-
		<input type="tel" name="phone2">-
		<input type="tel" name="phone3">
		<input type="submit" value="아이디 찾기">
		<hr>
		<button id="m_signup" onclick="location.href='../member/signup'">회원가입</button>
	</div>
	
	<div id="m_findPW">
		<input type="text" placeholder="아이디(메일주소)">
		<input type="text" placeholder="이름">
		<input type="tel" name="phone1" placeholder="010">-
		<input type="tel" name="phone2">-
		<input type="tel" name="phone3">
		<input type="submit" value="비번 찾기">
		<hr>
		<button id="m_signup" onclick="location.href='../member/signup'">회원가입</button>
	</div>


</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>