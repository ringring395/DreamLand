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

<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>둘러보기</span>
		</div>
			
		<div id="map">
			<span><img id="map_mark" src="../resources/img/icon/mark.png">
				를 눌러서 DreamLand🦄를 둘러보세요.</span>
				
<!-- Button trigger modal -->	
			<img alt="전체둘러보기" src="../resources/img/map/map_mark.png" usemap="#dreamlandMap">
			<map name="dreamlandMap" id="dreamlandMap">
				<area coords="374,297,423,352" id="Btn1" title="대관람차🎡">
				<area coords="472,147,520,202" id="Btn2" title="롤러코스터🎢">				
				<area coords="408,463,459,522" id="Btn3" title="회전목마🎠">
				<area coords="212,342,256,398" id="Btn4" title="스카이카☁">
				<area coords="565,343,615,402" id="Btn5" title="범퍼카🚗">
				<area coords="288,207,330,260" id="Btn6" title="미니열차🚂">
			</map>
				
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
			        <li><img id="slider-img1"></li>
			        <li><img id="slider-img2"></li>
			        <li><img id="slider-img3"></li>
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