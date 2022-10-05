<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="../../../resources/css/main.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(document).ready(function() {
		$('.slider').bxSlider();
	});
</script>

<title>main</title>
</head>
<jsp:include page="Header/header.jsp"></jsp:include>
<body>
	<div id="main">
		<div class="slider">
			<div>대표사진 하나</div>
			<div>대표 사진 둘</div>
			<div>대표 사진 셋</div>
		</div>


		<div>
			<div>대표 사진 스팟</div>
		</div>

		<div id="m_cal">
			<p>여기는 달력달력</p>
		</div>

	</div>
</body>
</html>