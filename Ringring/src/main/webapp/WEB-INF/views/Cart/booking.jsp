<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓예매</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="booking">
			<div id="booking_cal">달력달력</div>
			
			<div id="booking_detail">
				<select>
					<option>주간</option>
					<option>야간</option>
					<option>올데이</option>
				</select>
				
				<div>
					성인 가격가격
					<div>
						<button>-</button>
						<input type="text" value="0">
						<button>+</button>
					</div>
				</div>

				<div>
					청소년 가격가격
					<div>
						<button>-</button>
						<input type="text" value="0">
						<button>+</button>
					</div>
				</div>

				<div>
					아동 가격가격
					<div>
						<button>-</button>
						<input type="text" value="0">
						<button>+</button>
					</div>
				</div>				
			</div>
			
			<div>
				합계<input type="text" value="0 원">
				<button>구매</button>
			</div>	
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>