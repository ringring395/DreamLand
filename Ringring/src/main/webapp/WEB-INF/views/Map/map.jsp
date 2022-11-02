<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/map.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/map.js"></script>

<!-- 모달창 -->
<link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>

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

<button id="Btn4">
  버튼4
</button>

<button id="Btn5">
  버튼5
</button>

<button id="Btn6">
  버튼6
</button>	
		
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <!-- Vertically centered modal -->
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="map_modal_title"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">     
			<div class="slider">
			    <input type="radio" name="slide" id="slide1" checked>
			    <input type="radio" name="slide" id="slide2">
			    <input type="radio" name="slide" id="slide3">
			    <ul id="imgholder" class="imgs">
			        <li><img src="" id="slider-img1"></li>
			        <li><img src="" id="slider-img2"></li>
			        <li><img src="" id="slider-img3"></li>
			    </ul>
			    <div class="bullets">
			        <label for="slide1">&nbsp;</label>
			        <label for="slide2">&nbsp;</label>
			        <label for="slide3">&nbsp;</label>
			    </div>
			</div>    
		<div id="modal_text">
			<table id="modal_text_table">
				<tr><td id="modal_text_info"></td></tr>
				<tr><td><br>[유의 사항]<br>
						<div id="modal_text_info2"></div>
					</td>
				</tr>				
			</table>

		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

		</div><!-- map -->		
	</div><!-- wrap -->	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>