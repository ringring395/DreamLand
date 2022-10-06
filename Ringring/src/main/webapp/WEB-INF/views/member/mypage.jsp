<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/member.css">
<title>마이페이지</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>마이페이지</span>
		</div>
		
		<div id="mypage">
			<div class="mypageBtn" onclick="location.href='../membermodify'">
			회원정보수정
			</div>
			<div class="mypageBtn" onclick="location.href='../orderlist'">
			티켓구매내역
			</div>
			<div class="mypageBtn" onclick="location.href='../helplist'">
			1:1문의내역
			</div>					
		</div>

	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>