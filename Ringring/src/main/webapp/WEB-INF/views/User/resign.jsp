<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>DreamLandπ¦</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>νμνν΄</span>
		</div>
		
		<div id="resign">
			<form action="/resign" method="post">
				<span id="resign_info">
					${userdetail.id} λ, μ λ§ νν΄νμκ² μ΅λκΉ?<br><br>			
					*νμνν΄ μ κ°μΈμ λ³΄λ λͺ¨λ μ­μ λ©λλ€.*<br>
				</span><br>
				<div id="resignBtn_div">					
					<input type="submit" value="νμνν΄" id="resignBtn">
				</div>
			</form>
		</div><!-- resign -->
		
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>