<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/board.css">
<title>help1:1문의 내역</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="helplist">
			<table id="helplist_table">
				<tr>
					<th>1:1문의제목</th>
					<th>답변여부</th>
					<th>1:1문의 작성일자</th>
				</tr>
				<tr>
					<td>문의제목제목제목</td>
					<td>Y/N</td>
					<td>22/10/06</td>
				</tr>
			</table>
			
			<div id="helplist_Btn">
				<button onclick="location.href='../help'">1:1문의 바로가기</button>
			</div>			

		</div><!-- helplist -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>