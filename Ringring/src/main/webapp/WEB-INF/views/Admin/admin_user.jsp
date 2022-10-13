<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/admin.css">
<title>관리자용 회원관리</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>
			
			<table id="a_user_table">
				<tr>
					<th>No.</th>
					<th>아이디(메일)</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>가입일</th>
					<th>관리자</th>
				</tr>
		<c:forEach items="${user}" var="user">
				<tr>
					<td class="a_user_table_td">${user.rownum}</td>
					<td class="a_user_table_td">${user.id}</td>
					<td class="a_user_table_td">${user.name}</td>
					<td class="a_user_table_td">0${user.phone}</td>
					<td class="a_user_table_td">${user.signup}</td>
					<c:choose>
						<c:when test="${user.grp eq '0'}">
							<td class="a_user_table_td">N</td>
						</c:when>
						<c:otherwise>
							<td class="a_user_table_td">Y</td>
						</c:otherwise>
					</c:choose>
				</tr>		
		</c:forEach>	
			</table>

		<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/admin_user?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/admin_user?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/admin_user?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->
			
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>