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
			<span>할인혜택</span>
		</div>

		<c:set var="i" value="0" />
		<c:set var="j" value="2" />
		
		<div id="sale">
		
		<div id="sortDiv">
			<a href="/sale?sort=now" class="sortBtn">현재 할인 보기</a>	
			<a href="/sale?sort=past" class="sortBtn">지난 할인 보기</a>		
			<a href="/sale?sort=all" class="sortBtn">전체 할인 보기</a>		
		</div>

		<table id="sale_table">
		<c:forEach items="${sale}" var="sale">	

			<c:if test="${i%j == 0 }">
				<tr>
			</c:if>
					<td>
						<div id="sale_imgDiv">
							<img class="sale_img" src="/display?fileName=${sale.fileName}">
							<p id="sale_imgText">${sale.e_title}</p>
							<p id="sale_imgDiscount">${sale.e_discount} %</p>
						</div>
						<div id="sale_title">
							<div>${sale.e_title }<br>
							기간 : ${sale.e_start} ~ ${sale.e_end}<br>
							${sale.e_summary}</div>
							<div class="event_more">상세보기</div>

							<div id="sale_info">
								할인율 : ${sale.e_discount}<br>
								${sale.e_contents}
							</div>
						</div>
					</td>
			<c:if test="${i%j == j-1 }">
				</tr>
			</c:if>			
		<c:set var="i" value="${i+1 }" />

		</c:forEach>
		</table>		
		</div><!-- sale -->
					
			<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/sale?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/sale?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/sale?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->		
		
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>