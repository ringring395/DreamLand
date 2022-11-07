<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<link rel="stylesheet" href="../../../resources/css/calendar.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/calendar.js"></script>
<script type="text/javascript" src="/resources/js/ticket_select.js"></script>
<script type="text/javascript" src="/resources/js/ticket_order.js"></script>
<title>DreamLand🦄</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>티켓 예매</span>
		</div>
		
		<div id="select">
			<div id="calendarDiv"></div>

			<div id="select_detail">
				<p id="selectBefore"><img src="../resources/img/icon/pointer.png" >날짜를 선택해주세요.</p>
				<div id="optBox">
					<input type="hidden" name="user" value="${sessionScope.id}">
					<input type="hidden" id="selectDate">
					<input type="hidden" id="selectDay">
					<input type="hidden" id="selectPrice">
					<input type="hidden" id="selectTime">
					<input type="hidden" id="selectDefault">
					<input type="hidden" id="selectTotal">
					<input type="hidden" id="finalTotal">
					
					<select id="select_time">
						<option value="">종류를 선택해주세요👇👇</option>
						<option value="allday">종일</option>
						<option value="night">야간</option>
					</select>

					<div class="select_age">
						<div id="select_adult">
							<p>성인(만18세 이상)</p>
							<span id="adult_price" class="defaultPrice"></span>
						</div>
						<div  class="select_cnt">
							<button id="adult_minus" class="minus">-</button>
							<input type="text" id="adult_cnt" readonly>
							<button id="adult_plus" class="plus">+</button>						
						</div>
					</div>

					<div class="select_age">
						<div id="select_junior">
							<p>청소년(초,중,고등학생)</p>
							<span id="junior_price" class="defaultPrice"></span>
						</div>
						<div  class="select_cnt">
							<button id="junior_minus" class="minus">-</button>
							<input type="text" id="junior_cnt" readonly>
							<button id="junior_plus" class="plus">+</button>						
						</div>
					</div>
	
					<div class="select_age">
						<div id="select_child">
							<p>아동(미취학)</p>
							<span id="child_price" class="defaultPrice"></span>
						</div>
						<div  class="select_cnt">
							<button id="child_minus" class="minus">-</button>
							<input type="text" id="child_cnt" readonly>
							<button id="child_plus" class="plus">+</button>						
						</div>
					</div>
													
					<div>
						<p>합계 <span id="totalPrice"></span>원</p>
					</div>
				</div><!-- optBox -->
				
				<div>
					<label id="discountBtn">할인선택하기</label>
				</div>
			
				<div id="discountBox">
					
				<c:forEach items="${nowsale}" var="nowsale">									
					<c:choose>				
						<c:when test="${nowsale !=null}">
							<table>
								<tr>
									<td class="discountBox_td1" rowspan="2"><input type="hidden" id="e_no" value="${nowsale.e_no}">
									<input type="radio" name="e_discount" value="${nowsale.e_discount}"></td>
									<td>${nowsale.e_start}~${nowsale.e_end}</td>
								</tr>
								<tr>
									<td>${nowsale.e_title} / ${nowsale.e_discount}%</td>
								</tr>
							</table>												 
						</c:when>

						<c:otherwise>
							<p>현재 진행중인 할인이벤트가 없습니다.😢😢</p>
						</c:otherwise>
					</c:choose>					
				</c:forEach>
								
				</div><!-- discountBox -->
				
				<div id="finalBox">
					<p>최종금액 <span id="finalPrice"></span>원</p>
					<button id="orderBtn">구매</button>				
				</div><!-- finalPrice -->
				
			</div><!-- select_detail -->			
		</div><!-- select -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>