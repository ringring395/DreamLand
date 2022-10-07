<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<title>관리자 : 이벤트 메뉴 등록</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>
			
			<table id="a_event_upload">
				<tr>
					<th>종류</th>
					<td>
						<input type="radio" name="event_cate" value="event">행사
						<input type="radio" name="event_cate" value="sale">할인
						<input type="radio" name="event_cate" value="parade">퍼레이드
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" placeholder="제목을 입력하세요"></td>
				</tr>
				<tr>
					<th>기간</th>
					<td><input type="date" id="date_start">~
						<input type="date" id="date_end">
					</td>
				</tr>
				<tr>
					<th>한줄설명</th>
					<td><input type="text" placeholder="특징을 한줄로 설명"></td>
				</tr>
				<tr>
					<th>설명</th>
					<td><textarea rows="15" cols="90"></textarea>
					</td>
				</tr>
				<tr>
					<th>메인사진</th>
					<td><input type="file"></td>
				</tr>
				<tr>
					<th>서브사진</th>
					<td><input type="file"></td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" value="등록">
					</th>
				</tr>							
			</table>

		</div><!-- a_main -->
	</div>	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>