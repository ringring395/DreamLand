<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/admin.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script type="text/javascript" src="/resources/js/admin.js"></script>
<title>DreamLand๐ฆ_๊ด๋ฆฌ์</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>์ด๋ฒคํธ > ํ์ฌ/ํ ์ธ/ํผ๋ ์ด๋ ๋ฑ๋ก</span>
				<input type="hidden" class="submenu_where" value="event">
			</div>
			
			<form action="/admin_event" method="post" id="form" enctype="multipart/form-data">
			<table id="a_event_upload">
				<tr>
					<th>์ข๋ฅ</th>
					<td>
						<input type="radio" name="e_type" value="event">ํ์ฌ
						<input type="radio" name="e_type" value="sale">ํ ์ธ
						<input type="radio" name="e_type" value="parade">ํผ๋ ์ด๋
						
						<div id="a_event_salebox">
							ํ ์ธ์จ
							<select name="e_discount">
								<option value="5">5%</option>
								<option value="10">10%</option>
								<option value="15">15%</option>
								<option value="20">20%</option>
								<option value="25">25%</option>
								<option value="30">30%</option>
								<option value="35">35%</option>
								<option value="30">30%</option>
								<option value="35">35%</option>
								<option value="40">40%</option>
								<option value="45">45%</option>
								<optgroup label="50% ์ด์"></optgroup>	
								<option value="50">50%</option>
								<option value="60">60%</option>
								<option value="70">70%</option>
								<option value="80">80%</option>
								<option value="90">90%</option>													
							</select>
						</div>
					</td>
				</tr>

				<tr>
					<th>์ ๋ชฉ</th>
					<td><input type="text" name="e_title" placeholder="์ ๋ชฉ์ ์๋ ฅํ์ธ์"></td>
				</tr>
				<tr>
					<th>๊ธฐ๊ฐ</th>
					<td><input type="date" name="e_start">~<input type="date" name="e_end"></td>
				</tr>
				<tr>
					<th>ํ์ค์ค๋ช</th>
					<td><input type="text" name="e_summary" placeholder="ํน์ง์ ํ์ค๋ก ์ค๋ช"></td>
				</tr>
				<tr>
					<th>์ค๋ช</th>
					<td><textarea rows="15" cols="90" name="e_contents" ></textarea></td>
				</tr>
 				<tr>
					<th>๋ฉ์ธ์ฌ์ง</th>
					<td><input type="file" name="imgMain" id="main">
						<div id="imgMainResult">
							<ul></ul>	
						</div>					
					</td>
				</tr>
					
				<tr>
					<th>์๋ธ์ฌ์ง</th>
					<td><input type="file" name="imgSub" id="sub" multiple>
						<div id="imgSubResult">
							<ul></ul>	
						</div>
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="button" id="a_eventSubmitBtn" value="๋ฑ๋ก">
					</th>
				</tr>							
			</table>
			</form>
				
		</div><!-- a_main -->
	</div>	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>