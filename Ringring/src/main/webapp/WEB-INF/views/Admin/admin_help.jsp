<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 1:1답변</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="admin_help">
			관리자용_1:1문의
			<table id="admin_help_table">
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
			
			<button>관리자-1:1문의 목록으로 가기</button>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>