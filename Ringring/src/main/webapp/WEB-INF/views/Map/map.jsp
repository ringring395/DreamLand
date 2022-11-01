<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/map.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 모달창 -->
<link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../resources/js/map.js"></script>

<!-- bx슬라이더 -->
<link rel="stylesheet" href="../../../resources/css/jquery.bxslider.css">
<script src="../resources/js/jquery.bxslider.min.js"></script>

<title>둘러보기</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
			
		<div id="map">

<!-- Button trigger modal -->
<button id="Btn1">
  버튼1
</button>

<button id="Btn2">
  버튼2
</button>	

<button id="Btn3">
  버튼3
</button>	
		
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <!-- Vertically centered modal -->
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">     
			<div id="slider_map">
				<div class="slider_map_img" >
					<img src="" height="250" width="400" id="slider-img1">
				</div>
				<div class="slider_map_img">
					<img src="" height="250" width="400" id="slider-img2">
				</div>
				<div class="slider_map_img">
					<img src="" height="250" width="400" id="slider-img3">
				</div>
			</div>      
		<p id="modal-text"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

		</div><!-- map -->		
	</div><!-- wrap -->	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>