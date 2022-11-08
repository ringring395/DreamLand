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
<title>DreamLand🦄</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>티켓 확인</span>
		</div>	
	
		<div id="ticket">
	
			<div id="ticket_img">
			<div class="captureDiv">
				<table id="ticket_table">
					<tr>
						<td>입장일</td>
						<td>${ticket.t_date}</td>
						<td>${ticket.t_day}</td>
					</tr>
					<tr>
						<td>입장시간</td>
						<td colspan="2">${ticket.t_time}</td>
					</tr>
					<tr>
						<td>성인</td>
						<td>청소년</td>
						<td>어린이</td>
					</tr>
					<tr>
						<td>${ticket.t_a_cnt} 명</td>
						<td>${ticket.t_j_cnt} 명</td>
						<td>${ticket.t_c_cnt} 명</td>
					</tr>
					<tr>
						<td colspan="2">결제 금액</td>
						<td>
							<fmt:formatNumber value="${ticket.t_final}" pattern="#,###" /> 원
						</td>
					</tr>										
				</table>										
			</div>
			
			<input type="hidden" value="캡쳐">
	
				<div id="ticket_info" style="display:none">
					<p>발행된 티켓은 이메일로 전송되었습니다.<br>
					가입 시 기입한 이메일을 확인해주세요.</p>
				</div>
							
			</div><!-- ticket_img -->	
		</div><!-- ticket -->

	</div>


	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>