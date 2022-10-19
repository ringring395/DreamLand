<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<link rel="stylesheet" href="../../../resources/css/calendar.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/calendar.js"></script>
<script type="text/javascript" src="/resources/js/ticket_booking.js"></script>
<title>티켓예매</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="booking">
			<div id="calendarDiv"></div>

			<div id="booking_detail">
				<p id="selectBefore">👈👈👈날짜를 선택해주세요.</p>
				<div id="optBox">
					<input type="text" id="selectDate">
					<input type="text" id="selectDay">
					<input type="text" id="selectPrice">
					<input type="text" id="selectTime">
					<input type="text" id="selectDefault">
					<input type="text" id="bookingTotal">
					
					<select id="booking_time">
						<option value="">종류를 선택해주세요👇👇</option>
						<option value="allday">종일</option>
						<option value="night">야간</option>
					</select>

					<div class="booking_age">
						<div id="booking_adult">
							<p>성인(만18세 이상)</p>
							<span id="adult_price" class="defaultPrice"></span>
						</div>
						<div  class="booking_cnt">
							<button id="adult_minus" class="minus">-</button>
							<input type="text" id="adult_cnt">
							<button id="adult_plus" class="plus">+</button>						
						</div>
					</div>

					<div class="booking_age">
						<div id="booking_junior">
							<p>청소년(초,중,고등학생)</p>
							<span id="junior_price" class="defaultPrice"></span>
						</div>
						<div  class="booking_cnt">
							<button id="junior_minus" class="minus">-</button>
							<input type="text" id="junior_cnt">
							<button id="junior_plus" class="plus">+</button>						
						</div>
					</div>
	
					<div class="booking_age">
						<div id="booking_child">
							<p>아동(초등학교 입학전)</p>
							<span id="child_price" class="defaultPrice"></span>
						</div>
						<div  class="booking_cnt">
							<button id="child_minus" class="minus">-</button>
							<input type="text" id="child_cnt">
							<button id="child_plus" class="plus">+</button>						
						</div>
					</div>
													
					<div>
						<p>합계 <span id="totalPrice"></span>원</p>
						<button>구매</button>
					</div>
				</div><!-- optBox -->	
			</div><!-- booking_detail -->			
		</div><!-- booking -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>