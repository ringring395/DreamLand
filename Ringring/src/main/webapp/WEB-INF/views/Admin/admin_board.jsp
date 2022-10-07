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
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>
			
			<table id="a_board_table">
				<tr>
					<td>
						<select>
							<option>==카테고리==</option>
							<option>공지사항</option>
							<option>자주하는질문</option>
						</select>
					</td>
					<td><input type="text" placeholder="제목"></td>					
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="20" cols="90" placeholder="내용 입력"></textarea>
					</td>					
				</tr>
				<tr>
					<th colspan="3">
						<input type="submit" value="등록"></th>
				</tr>				
			</table>
		
			<button onclick="location.href='../notice'">공지사항<br>바로가기</button>
			<button onclick="location.href='../faq'">자주하는질문<br>바로가기</button>
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>