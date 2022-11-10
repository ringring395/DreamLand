<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<title>DreamLand🦄</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>티켓 구매내역</span>
		</div>
	
		<div id="orderlist">	
<!-- 5열 2행 세팅 -->		
		<c:set var="i" value="0"/>
		<c:set var="j" value="5"/>
		
		<div id="orderlist_div">
		<c:forEach items="${orderlist}" var="orderlist">
		<c:set var="random" value="${orderlist.t_a_cnt+orderlist.t_j_cnt+orderlist.t_c_cnt%6}"/>	
		<c:if test="${i%j == 0 }">
			<div class="orderlist_tableDiv">	
		</c:if>
			
			<table class="orderlist_table" background="../resources/img/randomImg/animal_${random%6+1}.png">		
				<tr>
					<td id="orderlist_red">${orderlist.t_date}</td>
					<td>
						
						${orderlist.t_day}
					</td>
					<td>${orderlist.t_time}</td>
				</tr>
				<tr class="orderlist_tr">
					<td>성인</td>
					<td>청소년</td>
					<td>어린이</td>
				</tr>
				<tr class="orderlist_tr">
					<td>${orderlist.t_a_cnt} 명</td>	
					<td>${orderlist.t_j_cnt} 명</td>
					<td>${orderlist.t_c_cnt} 명</td>
				</tr>
				<tr>
					<td>결제금액</td>
					<td>
						<fmt:formatNumber value="${orderlist.t_final}" pattern="#,###" /> 원
					</td>					
					<td id="orderlist_ticketBtn">
						<a href="ticket?t_no=${orderlist.t_no}">티켓보기</a>
					</td>
				</tr>
			</table>							
		<c:if test="${i%j == j-1 }">
			</div><!-- orderlist_tableDiv -->	
		</c:if>				
			
			<c:set var="i" value="${i+1}" />
			
			</c:forEach>

		</div><!-- orderlist_div -->
		</div><!-- orderlist -->
		
		<div id="paging">	
			<div>	
<!-- 이전버튼 -->
				<c:if test="${paging.prev }">
					<a href="/orderlist?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
				</c:if>

<!-- 페이징 처리 -->		
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
					<a href="/orderlist?pageNum=${num}&amount=${paging.cri.amount}">${num }</a>
				</c:forEach>

<!-- 다음버튼 -->			
				<c:if test="${paging.next}">
					<a href="/orderlist?pageNum=${paging.startPage+1}&amount=${paging.cri.amount}">다음</a>
				</c:if>					
			</div>		
		</div><!-- paging -->		
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>