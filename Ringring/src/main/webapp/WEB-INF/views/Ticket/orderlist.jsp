<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/ticket.css">
<title>티켓구매내역</title>

</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>페이지제목</span>
		</div>
	
		<div id="orderlist">

			<table id="orderlist_table">
			<c:forEach items="${orderlist}" var="orderlist">
			
				<tr>
					<td rowspan="3">사진사진</td>
					<td rowspan="2">방문일</td><td>${orderlist.t_date}</td>
					<td>성인</td><td>${orderlist.t_a_cnt} 명</td>
					<td>결제금액</td>
				</tr>
				<tr>
					<td>${orderlist.t_day}</td>
					<td>청소년</td><td>${orderlist.t_j_cnt} 명</td>
					<td>
						<fmt:formatNumber value="${orderlist.t_final}" pattern="#,###" /> 원
					</td>
				</tr>
				<tr>
					<td>입장시간</td><td>${orderlist.t_time}</td>
					<td>어린이</td><td>${orderlist.t_c_cnt} 명</td>
					<td><a href="ticket?t_no=${orderlist.t_no}">티켓보기</a></td>
				</tr>			
			
			</c:forEach>
			</table>	

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