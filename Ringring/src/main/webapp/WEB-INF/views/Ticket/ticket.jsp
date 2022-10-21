<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<title>티켓보기</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>	
		
		<form action="sendMail" method="post">		
		<div id="ticket">

<!-- 
		<input type="text" name="tomail">
		<input type="text" name="title" value="${noworder.t_date }">
		<input type="text" name="content"> 
 -->
			<div id="ticket_img">
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
			
				<div id="ticket_info">
					<p>발행된 티켓은 이메일로 전송되었습니다.<br>
					가입 시 기입한 이메일을 확인해주세요.</p>
				</div>
							
<!-- 			<input type="submit" value="메일 보내기"> -->
			</div><!-- ticket_img -->	
		</div><!-- ticket -->
				</form>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>