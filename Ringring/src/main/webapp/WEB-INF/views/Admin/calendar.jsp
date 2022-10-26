<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/admin.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/calendar_admin.js"></script>
<title>관리자용 메인=예매상황 확인</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>페이지제목</span>
			</div>
					
			<div id="a_ticket">
				
			<form name="calendarFrm" id="calendarFrm" action="" method="GET">
			<div class="calendar" >
			
		<!--날짜 네비게이션  -->
				<div class="navigation">
				<!-- 이전해 -->
					<a class="before_after_year" href="/calendar?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
						이전해					
					</a> 
				<!-- 이전달 -->
					<a class="before_after_month" href="/calendar?year=${today_info.before_year}&month=${today_info.before_month}">
						이전달					
					</a> 
				<!-- 지금 년월 -->
					<span class="this_month" onclick="location.href='/calendar'">
						&nbsp;${today_info.search_year}. 
						<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
					</span>
				<!-- 다음달 -->	
					<a class="before_after_month" href="/calendar?year=${today_info.after_year}&month=${today_info.after_month}">
						다음달
					</a>
				<!-- 다음해 -->	 
					<a class="before_after_year" href="/calendar?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
						다음해
					</a>
				</div>
${ticketCnt}
			<table class="calendar_body">	
				<tr id="calendar_table">
					<td class="day sun">일</td>
					<td class="day">월</td>
					<td class="day">화</td>
					<td class="day">수</td>
					<td class="day">목</td>
					<td class="day">금</td>
					<td class="day sat">토</td>
				</tr>
				<tr>
			<c:forEach var="dateList" items="${dateList}" varStatus="date_status"> 

				<c:choose>
					<c:when test="${dateList.value=='today'}">
						<td class="today">
							<div class="date">
								${dateList.date}
							</div>
							<div>
								📌<br>
								<input type="text" class="daycnt" value="${dateList.year}-${dateList.month+1}-${dateList.date}">
							</div>
						</td>
					</c:when>
					<c:when test="${date_status.index%7==6}">
						<td class="sat_day">
							<div class="sat">
								${dateList.date}
							</div>
							<div>
							🌊토<br>
							<input type="text" class="daycnt" value="${dateList.year}-${dateList.month+1}-${dateList.date}">

							</div>
						</td>
					</c:when>
					<c:when test="${date_status.index%7==0}">
				</tr>
				<tr>	
						<td class="sun_day">
							<div class="sun">
								${dateList.date}
							</div>
							<div>
							👻일<br>
							<input type="text" class="daycnt" value="${dateList.year}-${dateList.month+1}-${dateList.date}">
							</div>
						</td>
					</c:when>
					<c:otherwise>
						<td class="normal_day">
							<div class="date">
								${dateList.date}
							</div>
							<div>
								🐥<br>
								<input type="text" class="daycnt" value="${dateList.year}-${dateList.month+1}-${dateList.date}">
							</div>
						</td>
					</c:otherwise>
				</c:choose>
				
			</c:forEach>
				</tr>
			</table>
			</div><!-- calendar -->
			</form>				
				
			</div><!-- a_ticket -->		
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>