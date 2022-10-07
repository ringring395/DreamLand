<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/board.css">
<title>help1:1문의답변확인</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="helpdetail">
			<table id="helpdetail_table">
				<tr>
					<td>카테고리</td>
					<td>문의 제목</td>
					<td>문의시 입력한 메일주소</td>
				</tr>
				<tr>
					<td colspan="3">
						<input readonly type="text" class="helpdetail_text" value="문의내용">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input readonly type="text" class="helpdetail_text" value="문의답변">
					</td>
				</tr>				
			</table>
			
			<div id="helpdetail_Btn">
				<button onclick="location.href='../helplist'">1:1문의 목록으로</button>
			</div>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>