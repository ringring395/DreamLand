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
<title>parade퍼레이드</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>이벤트 >퍼레이드 일정</span>
		</div>

		<div id="sortDiv">
			<a href="/parade?sort=now" class="sortBtn">현재 퍼레이드 보기</a>	
			<a href="/parade?sort=past" class="sortBtn">지난 퍼레이드 보기</a>		
			<a href="/parade?sort=all" class="sortBtn">전체 퍼레이드 보기</a>		
		</div>
		
		<c:forEach items="${parade}" var="parade">	
		<div id="parade">
			<div id="parade_imgDiv">
				<img class="parade_img" src="/display?fileName=${parade.fileName}">
			</div>
			<div id="parade_info">
				<div id="parade_title">${parade.e_title }</div>
				<div id="parade_day">시작일 : ${parade.e_start } ~ 종료일 : ${parade.e_end }</div>
				<div id="parade_point">${parade.e_summary }</div>
				<div class="event_more">+더보기</div>
				<div class="event_hide">${parade.e_contents }</div>
			</div>			
		</div><!-- parade -->
		</c:forEach>

			<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/parade?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/parade?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/parade?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->
	
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>