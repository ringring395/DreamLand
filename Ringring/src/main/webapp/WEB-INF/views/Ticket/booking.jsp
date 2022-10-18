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
<title>티켓예매</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="booking">
			<div id="calendarDiv">달력달력</div>

			<div id="booking_detail">
				선택한 날짜
				<span id="booking_month"></span>월
				<span id="booking_date"></span>일
				<span id="booking_day"></span>요일
				<select id="booking_time">
					<option>주간</option>
					<option>야간</option>
					<option>올데이</option>
				</select>
				
				<input type="text" id="selectPrice">
				
				<div id="booking_adult" class="booking_age">
					성인 가격가격

						<button>-</button>
						<input type="text" value="0">
						<button>+</button>
				</div>

				<div id="booking_junior" class="booking_age">
					청소년 가격가격
						<button>-</button>
						<input type="text" value="0">
						<button>+</button>
				</div>

				<div id="booking_child" class="booking_age">
					아동 가격가격
						<button>-</button>
						<input type="text" value="0">
						<button>+</button>
				</div>				
			
				<div>
					합계<input type="text" value="0 원">
					<button>구매</button>
				</div>	
			</div><!-- booking_detail -->			
		</div><!-- booking -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>