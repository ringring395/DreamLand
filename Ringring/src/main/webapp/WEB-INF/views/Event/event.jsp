<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/event.css">

<title>이벤트_행사일정</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
		
	<c:forEach items="${event}" var="event">		
		<div id="event">				
			<div id="event_img">사진사진사진</div>
			<div id="event_info">
				<div id="event_title">${event.e_title}</div>
				<div id="event_start">시작일 : ${event.e_start}</div>
				~
				<div id="event_end">종료일 : ${event.e_end}</div>
				<div id="event_point">${event.e_summary}</div>
				<div id="event_more">+ 더보기</div>
			</div>								
		</div><!-- event -->
	</c:forEach>
	
	
		<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/event?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/event?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/event?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->
		
		
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>