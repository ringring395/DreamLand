<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>resign</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>회원탈퇴</span>
		</div>
		
		<div id="resign">
			<form action="/resign" method="post">
				<span id="resign_info">
					${userdetail.id} 님, 정말 탈퇴하시겠습니까?<br><br>			
					*회원탈퇴 시 개인정보는 모두 삭제됩니다.*<br>
				</span><br>
				<div id="resignBtn_div">					
					<input type="submit" value="회원탈퇴" id="resignBtn">
				</div>
			</form>
		</div><!-- resign -->
		
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>