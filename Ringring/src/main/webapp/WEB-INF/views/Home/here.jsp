<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/home.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc06e6646dc5d53a5dd5b4982d685177"></script>

<title>here여기로 오세요</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>	
	<div id="wrap">	
		<div id="pagetitle">
			<span>페이지타이틀</span>
		</div>
		
		<div id="here">
			<div id="here_map">지도지도</div>
<script>
	var container = document.getElementById('here_map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);
</script>	
					
			<div id="here_info">
				<p>주소 : 000로 00길 </p>
				<p>자가용 : 요리조리 </p>
				<p>버스 : 움짝움짝 </p>
				<p>지하철 : 둠둠둠 </p>
			</div>
		</div><!-- here -->
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>