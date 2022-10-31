<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/board.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/list.js"></script>
<script type="text/javascript" src="../../../resources/js/board.js"></script>
<title>help1:1문의 내역</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
			
		<div id="helplist">
			<table id="helplist_table">
				<tr>
					<th>1:1문의제목</th>
					<th>답변여부</th>
					<th>작성일</th>
				</tr>
			<c:forEach items="${helplist}" var="helplist">	
				<tr class="table_show">				
					<c:choose>
						<c:when test="${helplist.h_answer eq '0'}">
							<td class="h_title">${helplist.h_title}</td>
							<td class="helplist_table_td">N</td>
						</c:when>
						<c:otherwise>
							<td class="h_title">${helplist.h_title} 👇답변보기</td>
							<td class="helplist_table_td">Y</td>							
						</c:otherwise>
					</c:choose>
					<td class="helplist_table_td" id="h_date">${helplist.h_regdate}</td>					
				</tr>
				<tr class="table_hide">	
					<c:choose>
						<c:when test="${helplist.h_answer eq '0'}">						
							<td colspan="3" class="h_title">${helplist.h_content}</td>					
						</c:when>
						<c:otherwise>
							<td colspan="3" class="h_title">${helplist.h_content}
								<hr>
								<div class="table_answer">
									<div>${helplist.h_an_content}</div>
									<div>답변일 :${helplist.h_an_date}</div>
								</div>
							</td>														 						
						</c:otherwise>
					</c:choose>				
				</tr>				
			</c:forEach>	
			</table>

		<div id="paging">	
				<div>	
<!-- 이전버튼 -->
					<c:if test="${paging.prev }">
						<a href="/helplist?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/helplist?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.next}">
						<a href="/helplist?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
					</c:if>					
				</div>		
			</div><!-- paging -->
			
			<div id="helplist_Btn">
				<button onclick="location.href='../help'">1:1문의 바로가기</button>
			</div>			

		</div><!-- helplist -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>