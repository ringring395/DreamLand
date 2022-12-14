<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/admin.css">

<!-- include summernote -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="/resources/js/summernote-lite.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>

<script type="text/javascript" src="/resources/js/admin.js"></script>
<title>DreamLand๐ฆ_๊ด๋ฆฌ์</title>

<script>
$(document).ready(function() {
	  $('.summernote').summernote({
 	    	placeholder: '๋ฌธ์ ๋ด์ฉ์ ์๋ ฅํ์ธ์.',
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
				<span>๊ณ ๊ฐ์ผํฐ > 1:1๋ฌธ์ / ๋ต๋ณ๋ฑ๋ก</span>
				<input type="hidden" class="submenu_where" value="helplist">
			</div>
		
			<table id="a_helplist_table">
				<tr>
					<th>No.</th><th>์ ๋ชฉ</th>
					<th>์์ฑ์<br>๋ฌธ์์ผ</th>
					<th>๋ต๋ณ์ฌ๋ถ</th>									
				</tr>
			<c:forEach items="${ahelplist}" var="ahelplist">	
				<tr class="table_show">
				<c:choose>
					<c:when test="${ahelplist.h_answer eq '0'}">
						<td class="a_helplist_table_td">${ahelplist.h_no}</td>
						<td class="a_helplist_table_td">${ahelplist.h_title}   ๐๋ต๋ณ ์๋ ฅ</td>
						<td class="a_helplist_table_td">${ahelplist.h_id}<br>${ahelplist.h_regdate}</td>
						<td class="a_helplist_table_td">N</td>
					</c:when>
					<c:otherwise>
						<td class="a_helplist_table_td">${ahelplist.h_no}</td>
						<td class="a_helplist_table_td">${ahelplist.h_title}</td>
						<td class="a_helplist_table_td">${ahelplist.h_id}<br>${ahelplist.h_regdate}</td>
						<td class="a_helplist_table_td">Y</td>
					</c:otherwise>
				</c:choose>						
				</tr>	
				<tr class="table_hide">	
					<c:choose>
						<c:when test="${ahelplist.h_answer eq '0'}">						
							<td colspan="4" class="h_title">${ahelplist.h_content}
							<hr>
							<form action="">
								<div class="table_answer">
									<input type="hidden" name="h_no" value="${ahelplist.h_no}">
									<textarea class="summernote" name="h_an_content"></textarea>
									<input type="submit" value="๋ต๋ณ ๋ฑ๋ก">
								</div>	
							</form>	
							<hr>
							</td>						
						</c:when>
						<c:otherwise>
							<td colspan="4" class="h_title">${ahelplist.h_content}
								<hr>
								<div class="table_answer">
									<div>${ahelplist.h_an_content}</div>
									<div>๋ต๋ณ์ผ :${ahelplist.h_an_date}</div>
								</div>
								<hr>
							</td>														 						
						</c:otherwise>
					</c:choose>				
				</tr>				
			</c:forEach>							
			</table>

		<div id="paging">	
				<div>	
<!-- ์ด์ ๋ฒํผ -->
					<c:if test="${paging.prev }">
						<a href="/admin_helplist?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">์ด์ </a>
					</c:if>

<!-- ํ์ด์ง ์ฒ๋ฆฌ -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/admin_helplist?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- ๋ค์๋ฒํผ -->			
					<c:if test="${paging.next}">
						<a href="/admin_helplist?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">๋ค์</a>
					</c:if>					
				</div>		
			</div><!-- paging -->
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>