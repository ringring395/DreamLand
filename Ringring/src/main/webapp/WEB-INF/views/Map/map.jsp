<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/map.css">
<link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../resources/js/map.js"></script>
<title>둘러보기</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
			
		<div id="map">
			전체지도지도지도지도

		
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  버튼1
</button>		
		
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <!-- Vertically centered modal -->
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

    </div>
  </div>
</div>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" id="Btn2">
  버튼2
</button>		
		


<button id="Btn3">dddddd</button>
<div id="test"></div>	

		</div><!-- map -->		
	</div><!-- wrap -->	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>