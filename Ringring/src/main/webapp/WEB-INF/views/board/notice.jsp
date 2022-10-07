<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/board.css">
<title>공지사항</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="notice">
			<table id="notice_table">
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
			
			<div id="notice_search">
				<input type="text" placeholder="제목&내용 검색창검색창">
				<img alt="검색그림" src="">
			</div>
			
		</div><!-- notice -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>