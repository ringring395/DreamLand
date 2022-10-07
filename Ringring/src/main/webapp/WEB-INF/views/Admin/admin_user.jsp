<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<title>관리자용 회원관리</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>

			<table id="a_user_table">
				<tr>
					<th>No.</th>
					<th>아이디(메일)</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>가입일</th>
				</tr>
				<tr>
					<td>순번</td>
					<td>****@***.com</td>
					<td>임영웅</td>
					<td>010-1234-1234</td>
					<td>22/10/06</td>
				</tr>
			</table>
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>