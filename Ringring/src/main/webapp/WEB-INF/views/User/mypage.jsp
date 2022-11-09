<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/user.css">
<title>DreamLand🦄</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>마이페이지</span>
		</div>
		
		<div id="mypage">
			<div class="mypageBtn" onclick="location.href='../usermodify'">
				<img class="mypage_img" src="../resources/img/icon/pw_2.png">
				<p class="mypage_text">회원 정보 수정</p>		
			</div>
			<div class="mypageBtn" onclick="location.href='../orderlist'">
				<img class="mypage_img" src="../resources/img/icon/ticket.png">
				<p class="mypage_text">티켓 구매 내역</p>
			</div>
			<div class="mypageBtn" onclick="location.href='../helplist'">
				<img class="mypage_img" src="../resources/img/icon/list.png">
				<p class="mypage_text">1:1 문의 내역</p>
			</div>					
		</div>

	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>