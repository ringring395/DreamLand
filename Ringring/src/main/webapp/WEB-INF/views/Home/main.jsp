<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/home.css">
<link rel="stylesheet" href="../../../resources/css/jquery.bxslider.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/resources/js/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function() {
		$('.slider_main').bxSlider();
		$('.slider_sub').bxSlider();
	});
</script>

<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="main">
			<div class="slider_main">
				<div class="slider_main_img">
					<img alt="mainBx1" src="../resources/img/event/christmas_1.jpg">
				</div>
				<div class="slider_main_img">
					<img alt="mainBx2" src="../resources/img/event/fireworks_4.jpg">
				</div>
				<div class="slider_main_img">
					<img alt="mainBx3" src="../resources/img/event/main_event_1.jpg">
				</div>
				<div class="slider_main_img">
					<img alt="mainBx4" src="../resources/img/event/main_event_3.jpg">
				</div>				
			</div>

			<div id="main_sub">
				<div id="main_cal">
					<div class="slider_sub">
						<div class="slider_sub_img">
							<img alt="subBX1" src="../resources/img/map/rides1_1.jpg">
						</div>
						<div class="slider_sub_img">
							<img alt="subBX2" src="../resources/img/map/rides2_1.jpg">	
						</div>
						<div class="slider_sub_img">
							<img alt="subBX3" src="../resources/img/map/rides3_3.jpg">
						</div>
					</div>				
				</div>
				<div id="main_notice">
					<p>공지사항
					<button onclick="location.href='../notice'">더보기</button>
					</p>
					<table id="mainNotice_table">
					<c:forEach var="mainNotice" items="${mainNotice}">
					<c:set var="regdate" value="${mainNotice.b_regdate}" />
						<tr>
							<td class="mainNotice_td">${mainNotice.b_title}</td>
							<td>${fn:substring(regdate,0,10)}</td>										
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