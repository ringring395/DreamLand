<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓보기</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="ticket">
		
			<div id="ticket_detail">
				<table id="ticket_table">
					<tr>
						<td>입장일</td>
						<td>22/10/06</td>
					</tr>
					<tr>
						<td>입장시간</td>
						<td>올데이</td>
					</tr>
					<tr>
						<td>성인</td>
						<td>2 명</td>
					</tr>
					<tr>
						<td>청소년</td>
						<td>2 명</td>
					</tr>
					<tr>
						<td>아동</td>
						<td>1 명</td>
					</tr>
					<tr>
						<td>결제 금액</td>
						<td>50000 원</td>
					</tr>										
				</table>							
			</div>
			
			
			<div>
				<p>발행된 티켓은 이메일로 전송되었습니다.<br>
				가입 시 기입한 이메일을 확인해주세요.</p>
			</div>	
		</div>
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>