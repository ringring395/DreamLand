<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/admin.css">
<title>관리자용_1:1문의 리스트</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
	<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>
		
			<table id="a_helplist_table">
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>작성자</th>
					<th>답변여부</th>									
				</tr>
			<c:forEach items="${helplist}" var="helplist">	
				<tr>
					<td class="a_helplist_table_td">${helplist.h_no}</td>
					<td class="a_helplist_table_td">${helplist.h_title}</td>
					<td class="a_helplist_table_td">${helplist.h_id}</td>
					<c:choose>
						<c:when test="${helplist.h_answer eq '0'}">
							<td  class="a_helplist_table_td">N</td>
						</c:when>
						<c:otherwise>
							<td  class="a_helplist_table_td">Y</td>
						</c:otherwise>
					</c:choose>						
				</tr>
			</c:forEach>					
			</table>

		<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/admin_helplist?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/admin_helplist?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/admin_helplist?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>