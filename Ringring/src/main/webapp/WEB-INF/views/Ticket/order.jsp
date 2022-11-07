<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/ticket_order.js"></script>
<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>티켓 구매완료</span>
		</div>
		
		<div id="order">
			<table id="order_table">
				<tr>
					<td class="order_tableT" rowspan="2">방문일</td>
					<td>${noworder.t_date}</td>
					<td>${noworder.t_day}</td>
				</tr>
				<tr>
					<td colspan="2">${noworder.t_time}</td>
				</tr>
				<tr>
					<td></td>
					<td class="order_tableT">수량</td>
					<td class="order_tableT">가격</td>
				</tr>
				<tr>
					<td class="order_tableT" >성인<br>(만18세 이상)</td>
					<td>${noworder.t_a_cnt}</td>
					<td>
						<fmt:formatNumber value="${noworder.t_a_price}" pattern="#,###" /> 원
					</td>
				</tr>
				<tr>
					<td class="order_tableT" >청소년<br>(초,중,고등학생)</td>
					<td>${noworder.t_j_cnt}</td>
					<td>
						<fmt:formatNumber value="${noworder.t_j_price}" pattern="#,###" /> 원
					</td>
				</tr>
				<tr>
					<td class="order_tableT" >어린이<br>(미취학)</td>
					<td>${noworder.t_c_cnt}</td>
					<td>
						<fmt:formatNumber value="${noworder.t_c_price}" pattern="#,###" /> 원
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="order_tableT">합계</td>
					<td>
						<fmt:formatNumber value="${noworder.t_total}" pattern="#,###" /> 원
					</td>					
				</tr>																														
			</table>
			<table class="order_table2">
				<tr>
					<td class="order_tableT_null"></td>				
					<td class="order_tableT">적용한 할인</td>
					<td>${noworder.e_title}</td>			
				</tr>
				<tr>
					<td class="order_tableT_null"></td>	
					<td class="order_tableT">할인율</td>
					<td>${noworder.e_discount} %</td>
				</tr>
				<tr>
					<td class="order_tableT_null"></td>					
					<td class="order_tableT">할인금액</td>
				 	<td>
						<fmt:formatNumber value="${noworder.t_total - noworder.t_final}" pattern="#,###" /> 원
					</td>
				</tr>
			</table>
			<table class="order_table2">				
				<tr>
					<td class="order_tableT_null"></td>					
					<td class="order_tableT">최종 결제금액</td>					
					<td>
						<fmt:formatNumber value="${noworder.t_final}" pattern="#,###" /> 원
					</td>
				</tr>
			</table>
			
			<div id="shortcutDiv">
				<button class="shortcut" onclick="location.href='../orderlist'">구매내역<br>바로가기</button>
				<button class="shortcut" onclick="location.href='../ticket?t_no=${noworder.t_no}'">💕티켓💕<br>바로가기</button>
			</div><!-- shortcutDiv -->					
		</div><!-- order -->

	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>