<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faq</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="faq">
			
			<div id="faq_sub">
				<div id="faq_category">
					<select>
						<option>행사</option>
						<option>티켓구매</option>
						<option>대관</option>
						<option>등등</option>
					</select>
				</div>
				<div id="faq_search">
					<input type="text" value="제목&내용 검색창검색창">
				</div>
			</div>
			
			<div id="faq_table">
				<table>
					<tr>
						<th>제목</th>
						<th>내용</th>										
					</tr>
					<tr>
						<td>자주하는질문 제목제목</td>
						<td>자주하는질문 내용내용</td>										
					</tr>	
				</table>
			</div>
			
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>