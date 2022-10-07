<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<title>관리자 1:1답변</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>

			<table id="a_help_table">
				<tr>
					<td>카테고리 출력</td>
					<td>문의 제목</td>
					<td>문의 회원 메일주소</td>
				</tr>
				<tr>
					<td colspan="3">문의내용</td>
				</tr>
				<tr>
					<td colspan="3">
						<textarea rows="20" cols="100" placeholder="문의 답변"></textarea>
					</td>
				</tr>
				<tr>
					<th colspan="3">
						<input type="submit" value="등록"></th>
				</tr>				
			</table>
			
			<button onclick="location.href='../admin_helplist'">관리자-1:1문의 목록으로 가기</button>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>