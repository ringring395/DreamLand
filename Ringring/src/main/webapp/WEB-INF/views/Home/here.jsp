<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/home.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc06e6646dc5d53a5dd5b4982d685177"></script>

<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>	
	<div id="wrap">	
		<div id="pagetitle">
			<span>오시는 길</span>
		</div>
		
		<div id="here">
<!-- 카카오 API -->		
			<div id="here_map"></div>
<script>
	//지도를 담을 공간
	var container = document.getElementById('here_map');
	//기본 옵션
	var options = {
		//위치(위도,경도)
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		//지도 레벨(확대 정도)
		level: 5
	};

	var map = new kakao.maps.Map(container, options);
</script>	
					
			<div id="here_info">
				<table id="here_info_table">
					<tr>
						<td><img class="here_img" src="../resources/img/icon/map_pin.png"></td>
						<th>주소</th>
						<td class="here_txt">행복시 해피구 드림로 꿈길</td>
					</tr>
					<tr>
						<td><img class="here_img" src="../resources/img/icon/car.png"></td>
						<th>자가용</th>
						<td class="here_txt">1번 국도 드림랜드 방향</td>
					</tr>
					<tr>
						<td><img class="here_img" src="../resources/img/icon/bus.png"></td>
						<th>버스</th>
						<td class="here_txt">드림랜드 입구 정류장 하차 도보 1분거리</td>
					</tr>
					<tr>
						<td><img class="here_img" src="../resources/img/icon/subway.png"></td>
						<th>지하철</th>
						<td class="here_txt">9호선 드림랜드역 7번 출구에서 직진방향 도보 3분거리</td>
					</tr>
<!-- 카카오 API : 길찾기 바로가기 -->					
					<tr id="here_link" onclick="location.href='https://map.kakao.com/link/to/DreamLand,33.450701,126.570667'">
						<td><img class="here_img" src="../resources/img/icon/navi.png"></td>
						<td colspan="2">길찾기 바로가기</td>
					</tr>
						
				</table>

			</div>
		</div><!-- here -->
	</div><!-- wrap -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>