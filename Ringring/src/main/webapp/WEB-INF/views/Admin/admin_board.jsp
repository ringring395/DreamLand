<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script><!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="/resources/js/summernote-lite.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>

<title>관리자 공지사항/자주하는질문</title>

<script>
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: '내용입력',
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
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>

			<form id="form" action="/admin_board" method="post">			
			<table id="a_board_table">
				<tr>
					<td>
						<select name="b_type">
							<option>==카테고리==</option>
							<option value="notice">공지사항</option>
							<option value="faq">자주하는질문</option>
						</select>
					</td>
					<td><input type="text" name="b_title" placeholder="제목"></td>					
				</tr>
				<tr>
					<td colspan="2">
						<textarea id="summernote" name="b_content"></textarea>
					</td>					
				</tr>
				<tr>
					<th colspan="3">
						<input type="submit" value="등록"></th>
				</tr>				
			</table>
			</form>
			<button onclick="location.href='../notice'">공지사항<br>바로가기</button>
			<button onclick="location.href='../faq'">자주하는질문<br>바로가기</button>
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>