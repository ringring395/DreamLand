<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>

<title>관리자_이벤트 등록</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>관리자_이벤트 등록</span>
			</div>
			
			<form action="/admin_event" method="post" id="form" enctype="multipart/form-data">
			<table id="a_event_upload">
				<tr>
					<th>종류</th>
					<td>
						<input type="radio" name="e_type" value="event">행사
						<input type="radio" name="e_type" value="sale">할인
						<input type="radio" name="e_type" value="parade">퍼레이드
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="e_title" placeholder="제목을 입력하세요"></td>
				</tr>
				<tr>
					<th>기간</th>
					<td><input type="date" name="e_start">~
						<input type="date" name="e_end">
					</td>
				</tr>
				<tr>
					<th>한줄설명</th>
					<td><input type="text" name="e_summary" placeholder="특징을 한줄로 설명"></td>
				</tr>
				<tr>
					<th>설명</th>
					<td><textarea rows="15" cols="90" name="e_contents" ></textarea>
					</td>
				</tr>
 			<tr>
					<th>메인사진</th>
					<td><input type="file" name="imgMain" id="main">

						<div id="imgMainResult">
							<ul>								
							</ul>	
						</div>					
					</td>
				</tr>
					
				<tr>
					<th>서브사진</th>
					<td><input type="file" name="imgSub" id="sub" multiple>
						<div id="imgSubResult">
							<ul>								
							</ul>	
						</div>
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" id="a_eventSubmitBtn" value="등록">
					</th>
				</tr>							
			</table>
			</form>
				
		</div><!-- a_main -->
	</div>	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>