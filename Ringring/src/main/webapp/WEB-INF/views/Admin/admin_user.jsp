<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/admin.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/admin.js"></script>
<title>DreamLand๐ฆ_๊ด๋ฆฌ์</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>ํ์ ๊ด๋ฆฌ</span>
				<input type="hidden" class="submenu_where" value="user">
			</div>
			
			<table id="a_user_table">
				<tr>
					<th>No.</th><th>์์ด๋(๋ฉ์ผ)</th>
					<th>์ด๋ฆ</th><th>์ ํ๋ฒํธ</th>
					<th>๊ฐ์์ผ</th><th>๊ด๋ฆฌ์</th>
				</tr>
		<c:forEach items="${user}" var="user">
			<c:set var="phone" value="${user.phone}" />
				<tr>
					<td class="a_user_table_td">${user.rownum}</td>
					<td class="a_user_table_td">${user.id}</td>
					<td class="a_user_table_td">${user.name}</td>
					<td class="a_user_table_td">0${fn:substring(phone,0,2)}-${fn:substring(phone,2,6)}-${fn:substring(phone,6,10)}</td>
					<td class="a_user_table_td">${user.signup}</td>
					<c:choose>
						<c:when test="${user.grp eq '0'}">
							<td class="a_user_table_td"></td>
						</c:when>
						<c:otherwise>
							<td class="a_user_table_td">โ</td>
						</c:otherwise>
					</c:choose>
				</tr>		
		</c:forEach>	
			</table>

		<div id="paging">	
			<div>	
<!-- ์ด์ ๋ฒํผ -->
				<c:if test="${paging.prev }">
					<a href="/admin_user?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">์ด์ </a>
				</c:if>
<!-- ํ์ด์ง ์ฒ๋ฆฌ -->		
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
					<a href="/admin_user?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
				</c:forEach>
<!-- ๋ค์๋ฒํผ -->			
				<c:if test="${paging.next}">
					<a href="/admin_user?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">๋ค์</a>
				</c:if>					
			</div>		
		</div><!-- paging -->
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>