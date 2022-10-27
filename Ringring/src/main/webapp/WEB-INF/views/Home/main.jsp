<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="../../../resources/css/home.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(document).ready(function() {
		$('.slider').bxSlider();
	});
</script>

<title>main</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="main">
			<div class="slider">
				<div class="slider_img">대표사진 하나</div>
				<div class="slider_img">대표 사진 둘</div>
				<div class="slider_img">대표 사진 셋</div>
			</div>

			<div id="main_sub">
				<div id="main_cal">
					<p>여기는 달력달력</p>
				</div>
				<div id="main_notice">
					<p>공지사항
					<button onclick="location.href='../notice'">더보기</button>
					</p>
					<table border="1">
					<c:forEach var="mainNotice" items="${mainNotice}">
						<tr>
							<td>${mainNotice.b_title}</td>
							<td>${mainNotice.b_regdate}</td>										
						</tr>					
					</c:forEach>						
					</table>
				</div>
			</div><!-- main_sub -->
		</div>
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>