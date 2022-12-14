<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/html2canvas.js"></script>
<script type="text/javascript" src="../../../resources/js/ticket.js"></script>
<title>DreamLand๐ฆ</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>ํฐ์ผ ํ์ธ</span>
		</div>	
	
		<div id="ticket">
	
			<div id="ticket_img">
			<div class="captureDiv">
				<table id="ticket_table">
					<tr>
						<td class="ticket_td1">์์ฅ์ผ</td>
						<td class="ticket_td2">${ticket.t_date}</td>
						<td class="ticket_td2">${ticket.t_day}</td>
					</tr>
					<tr>
						<td class="ticket_td1">์์ฅ์๊ฐ</td>
						<td colspan="2" class="ticket_td2">${ticket.t_time}</td>
					</tr>
					<tr>
						<td class="ticket_td1">์ฑ์ธ</td>
						<td class="ticket_td1">์ฒญ์๋</td>
						<td class="ticket_td1">์ด๋ฆฐ์ด</td>
					</tr>
					<tr>
						<td class="ticket_td2">${ticket.t_a_cnt} ๋ช</td>
						<td class="ticket_td2">${ticket.t_j_cnt} ๋ช</td>
						<td class="ticket_td2">${ticket.t_c_cnt} ๋ช</td>
					</tr>
					<tr>
						<td colspan="2" class="ticket_td1">๊ฒฐ์  ๊ธ์ก</td>
						<td class="ticket_td2">
							<fmt:formatNumber value="${ticket.t_final}" pattern="#,###" /> ์
						</td>
					</tr>										
				</table>										
			</div>
			
			<input type="hidden" value="์บก์ณ">
	
				<div id="ticket_info" style="display:none">
					<p>๋ฐํ๋ ํฐ์ผ์ ์ด๋ฉ์ผ๋ก ์ ์ก๋์์ต๋๋ค.<br>
					๊ฐ์ ์ ๊ธฐ์ํ ์ด๋ฉ์ผ์ ํ์ธํด์ฃผ์ธ์.</p>
				</div>
							
			</div><!-- ticket_img -->	
		</div><!-- ticket -->

	</div>


	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>