<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<title>티켓구매내역</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
		<div id="orderlist">
			<div id="orderlist_img">사진사진</div>
			<table id="orderlist_table">
				<tr>
					<td>입장일</td><td>22/10/06</td>
					<td>입장시간</td><td>올데이</td>
					<td></td><td></td>
					<td>결제금액</td>
				</tr>
				<tr>
					<td>성인</td><td>3 명</td>
					<td>청소년</td><td>1 명</td>
					<td>아동</td><td>0 명</td>
					<td>80000 원</td>
				</tr>
			</table>	

		</div><!-- orderlist -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>