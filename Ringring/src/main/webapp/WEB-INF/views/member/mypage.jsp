<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="m_mypage">
			<div class="m_goBtn" onclick="location.href='../membermodify'">
			회원정보수정
			</div>
			<div class="m_goBtn" onclick="location.href='../orderlist'">
			티켓구매내역
			</div>
			<div class="m_goBtn" onclick="location.href='../helplist'">
			1:1문의내역
			</div>					
		</div>

	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>