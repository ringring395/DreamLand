<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/board.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/list.js"></script>
<script type="text/javascript" src="../../../resources/js/board.js"></script>
<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>공지사항</span>
		</div>
		
		<div id="notice">	

			<table id="notice_table">
				<tr>
					<th>No.</th><th>공지사항</th><th>등록일</th>										
				</tr>
			<c:forEach items="${notice}" var="notice">	
				<tr class="table_show">
					<td class="n_table_text" id="n_table_no">${notice.b_no}</td>
					<td class="n_table_text" id="n_table_title">${notice.b_title}</td>
					<td class="n_table_text" id="n_table_date">
						<fmt:parseDate value="${notice.b_regdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
					</td>										
				</tr>
				<tr class="table_hide">
					<td></td>
					<td class="n_table_content">${notice.b_content}</td>
					<td></td>
				</tr>
			</c:forEach>					
			</table>
						
			<form id="searchBtn" action="/notice">
			<div id="notice_search">
				<input type="text" name="keyword" placeholder="제목+내용 검색">
					<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
					<input type="hidden" name="amount" value="${paging.cri.amount}">
				
				<div id="notice_searchBtn">
					<input type="button" value="검색" >
					<img alt="사진" src="../resources/img/icon/search.png">
				</div>	
			</div>
			</form>
		</div><!-- notice -->
		
		<div id="paging">	
			<div>	
<!-- 이전버튼 -->
				<c:if test="${paging.prev }">
					<a href="/notice?keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
				</c:if>

<!-- 페이징 처리 -->		
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
					<a href="/notice?keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
				</c:forEach>

<!-- 다음버튼 -->			
				<c:if test="${paging.next}">
					<a href="/notice?keyword=${paging.cri.keyword}&pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
				</c:if>					
			</div>		
		</div><!-- paging -->		
		
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>