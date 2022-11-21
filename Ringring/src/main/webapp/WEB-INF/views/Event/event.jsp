<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/event.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/event.js"></script>
<title>DreamLand🦄</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>행사 일정</span>
		</div>

		<div id="sortDiv">
			<a href="/event?sort=now" class="sortBtn">현재 행사 보기</a>	
			<a href="/event?sort=past" class="sortBtn">지난 행사 보기</a>		
			<a href="/event?sort=all" class="sortBtn">전체 행사 보기</a>		
		</div>
	<c:forEach items="${event}" var="event">
		
		<div id="event">
			<div id="event_imgDiv">
				<img class="event_img" src="../../../resources/img/upload/${event.fileName}">
				<img style="display:none" src="/display?fileName=${event.fileName}">
			</div>
			<div id="event_info">
				<input type="hidden" name="e_no" value="${event.e_no }">
				<div id="event_title">${event.e_title}</div>
				<div id="event_day">시작일 : ${event.e_start}	~ 종료일 : ${event.e_end}</div>
				<div id="event_point">${event.e_summary}</div>
				<div class="event_more">+ 더보기</div>
				<div class="event_hide">${event.e_contents}</div>	

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