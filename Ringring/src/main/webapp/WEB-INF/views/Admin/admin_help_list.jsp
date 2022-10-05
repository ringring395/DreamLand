<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자용_1:1문의 리스트</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<div id="a_main">
			1:1문의 
			<table>
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>작성자(메일)</th>
					<th>답변여부</th>									
				</tr>
				<tr>
					<td>순번 카운팅</td>
					<td>1:1문의 제목</td>
					<td>1:1문의 작성자(아이디=메일)</td>
					<td>1:1문의 답변여부(Y/N)</td>										
				</tr>				
			</table>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>