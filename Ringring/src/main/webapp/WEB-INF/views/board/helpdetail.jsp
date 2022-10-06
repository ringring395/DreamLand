<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>help1:1문의답변확인</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="help">
			1:1문의
			<table id="helpdetail">
				<tr>
					<td>카테고리</td>
					<td>문의 제목</td>
					<td>문의시 입력한 메일주소</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" readonly value="문의내용">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" readonly value="문의답변">
					</td>
				</tr>				
			</table>
			
			<div id="help_Btn">
				<button onclick="location.href='../faq'">1:1문의 목록으로</button>
			</div>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>