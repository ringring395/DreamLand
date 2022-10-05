<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div>
			<table>
				<tr>
					<th>No.</th>
					<th>공지사항</th>
					<th>등록일</th>										
				</tr>
				<tr>
					<td>순번 카운팅</td>
					<td>공지제목제목</td>
					<td>공지등록한 날짜날짜</td>										
				</tr>				
			</table>
			<div>
				<input type="text" value="제목&내용 검색창검색창">
			</div>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>