<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/img.js"></script>

<title>이미지테스트</title>
</head>

<body>
	<div id="a_wrap">
			
	
	<table id="a_event_upload">
		<tr>
			<th></th>
			<td><input type="text" name="e_title" placeholder="제목을 입력하세요"></td>
		</tr>
		<tr>
			<th>메인사진</th>
			<td><input type="file" name="imgMain"></td>
		</tr>
		<tr>
			<th>서브사진</th>
			<td><input type="file" name="imgSub" multiple>
				<div id="uploadResult">
					<ul></ul>	
				</div>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" id="a_eventSubmitBtn" value="등록">
			</th>
		</tr>							
	</table>
	

	</div>	
</body>
</html>