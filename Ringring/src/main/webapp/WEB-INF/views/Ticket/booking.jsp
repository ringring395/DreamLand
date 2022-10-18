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
<script type="text/javascript" src="/resources/js/ticket.js"></script>
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
					<input type="hidden" id="selectPrice">
					
					<select id="booking_time">
						<option value="">종류를 선택해주세요👇👇</option>
						<option value="allday">종일</option>
						<option value="night">야간</option>
					</select>

					<div id="booking_adult" class="booking_age">
						성인(18세 이상)	
							<button id="adult_minus" class="minus">-</button>
							<input type="text" id="adult_price">
							<button id="adult_plus" class="plus">+</button>
					</div>
	
					<div id="booking_junior" class="booking_age">
						청소년(초,중,고등학생)
							<button id="junior_minus" class="minus">-</button>
							<input type="text" id="junior_price">
							<button id="junior_plus" class="plus">+</button>
					</div>
	
					<div id="booking_child" class="booking_age">
						아동(초등학교 입학전)
							<button id="child_minus" class="minus">-</button>
							<input type="text" id="child_price">
							<button id="child_plus" class="plus">+</button>
					</div>				
				
					<div>
						합계<input type="text" value="0 원">
						<button>구매</button>
					</div>
				</div><!-- optBox -->	
			</div><!-- booking_detail -->			
		</div><!-- booking -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>