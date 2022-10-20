<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/ticket_order.js"></script>
<title>주문페이지</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="order">
		
			<table id="order_table">
				<tr>
					<td class="order_tableT" rowspan="2">방문일</td>
					<td>${ticket.t_date}</td>
					<td>${ticket.t_day}</td>
				</tr>
				<tr>
					<td colspan="2">${ticket.t_time}</td>
				</tr>
				<tr>
					<td></td>
					<td class="order_tableT">수량</td>
					<td class="order_tableT">가격</td>
				</tr>
				<tr>
					<td class="order_tableT" >성인<br>(만18세 이상)</td>
					<td>${ticket.t_a_cnt}</td>
					<td>${ticket.t_a_price}</td>
				</tr>
				<tr>
					<td class="order_tableT" >청소년<br>(초,중,고등학생)</td>
					<td>${ticket.t_j_cnt}</td>
					<td>${ticket.t_j_price}</td>
				</tr>
				<tr>
					<td class="order_tableT" >어린이<br>(미취학)</td>
					<td>${ticket.t_c_cnt}</td>
					<td>${ticket.t_c_price}</td>
				</tr>
				<tr>
					<td></td>
					<td class="order_tableT" >합계</td>
					<td>${ticket.t_total}</td>					
				</tr>																														
			</table>
			
			<div id="order_discountBtn">
				할인선택하기
			</div>
			
			<div id="order_discount">

			</div>
			
			<div id="order_final">
				<div>최종 금액</div>
				<div>위에 합계랑 밑에 할인이벤트 가격 계산해서 넣으면됨</div>
			</div>
		
		</div><!-- order -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>