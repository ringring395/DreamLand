<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/map.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/map.js"></script>
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
			<button id="Btn1" onclick="modal()">버튼1번</button>
			<button id="Btn2">버튼2번</button>
			<button id="Btn3">버튼3번</button>
			<button id="Btn4">버튼4번</button>
		</div>
		
		
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">모달 제목</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          모달 내용
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          <button type="button" class="btn btn-primary">확인</button>
        </div>
      </div>
    </div>
  </div>
		
		
		
		
	</div>
	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>