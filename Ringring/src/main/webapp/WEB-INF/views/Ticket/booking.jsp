<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<title>티켓예매</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="booking">
			<div id="booking_cal">달력달력</div>
			
			<div id="booking_detail">
				<select id="booking_time">
					<option>주간</option>
					<option>야간</option>
					<option>올데이</option>
				</select>
				
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