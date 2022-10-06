<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<title>관리자 공지사항/자주하는질문</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			관리자용_게시판/공지사항/자주하는질문
			<table id="a_board">
				<tr>
					<td>
						<select>
							<option>공지사항</option>
							<option>자주하는질문</option>
						</select>
					</td>
					<td><input type="text" placeholder="제목"></td>					
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="20" cols="60" placeholder="내용 입력"></textarea>
					</td>					
				</tr>
				<tr>
					<th colspan="3">
						<input type="submit" value="등록"></th>
				</tr>				
			</table>
			
			<button>공지사항<br>바로가기</button>
			<button>1:1문의<br>바로가기</button>
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>