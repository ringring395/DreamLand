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
			<span>자주하는 질문</span>
		</div>
		
		<div id="faq">
		
			<div id="faq_sub">
				<div id="faq_category">
					<select>
						<option value="none">==카테고리==</option>
						<option>행사</option>
						<option>티켓구매</option>
						<option>대관</option>
						<option>등등</option>					
					</select>
				</div>
				
				<form id="searchBtn" action="/faq">
				<div id="faq_search">
					<input type="text" name="keyword" placeholder="제목+내용 검색">
						<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
						<input type="hidden" name="amount" value="${paging.cri.amount}">
					
					<div id="faq_searchBtn">
						<input type="button" value="검색" >
						<img alt="사진" src="../resources/img/icon/search.png">
					</div>	
				</div>
				</form>	
			
			</div><!-- faq_sub -->			
			
			<div id="faq_table">
			<c:forEach items="${faq}" var="faq">
				<table>
					<tr class="table_show">
						<th></th>
						<td class="f_table_center">${faq.b_title }
							<span id="faq_more">&nbsp;&nbsp;&nbsp;&nbsp;+더보기</span></td>
						<td id="f_table_date">
							<fmt:parseDate value="${faq.b_regdate }" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
							<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>					
						</td>										
					</tr>
					<tr class="table_hide">
						<th>내용</th>
						<td colspan="2" class="f_table_center">${faq.b_content }</td>											
					</tr>					
				</table>
			</c:forEach>
			</div>			
		</div><!-- faq -->
		
		<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/faq?keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/faq?keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/faq?keyword=${paging.cri.keyword}&pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->	
		
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>