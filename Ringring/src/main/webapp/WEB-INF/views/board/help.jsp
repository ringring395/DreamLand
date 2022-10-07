<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/board.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script><!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="/resources/js/summernote-lite.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>

<title>help1:1문의</title>


<script>
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: '문의 내용을 입력하세요.',
	        minHeight: 370,
	        maxHeight: null,
            lang : 'ko-KR',
    		toolbar: [
    		    ['style', ['style']],
    		    ['font', ['bold', 'underline', 'clear']],
    		    ['fontname', ['fontname']],
    		    ['color', ['color']],
    		    ['para', ['ul', 'ol', 'paragraph']],
    		    ['table', ['table']],
    		    ['insert', ['link', 'picture']]
    		  ]	        
	  });
	});
</script>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
			
		<div id="help">
		<form method="post" action="/write">
			<div id="help_sub">
			
				<div id="help_category">
					<select>
						<option>행사</option>
						<option>티켓구매</option>
						<option>대관</option>
						<option>등등</option>
					</select>
				</div>
				<div id="help_title">
					<input type="text" value="문의 제목">
				</div>
				<div id="help_email">
					<input type="email" value="가입시 입력한 아이디">
					<p>가입시 입력한 메일로 답변여부가 전송됩니다.</p>
				</div>				
			</div><!-- help_sub -->			

			<div id="help_contents">
				<textarea id="summernote" name="content"></textarea>
			</div>
			
			<div id="help_Btn">
				<button onclick="location.href='../faq'">자주하는 질문 목록보기</button>
				<input type="submit" value="문의하기">
			</div>
			</form>
		</div><!-- help -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>