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

<title>DreamLand🦄_관리자</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>
<body>
	<div id="a_wrap">
		<jsp:include page="admin_menu.jsp"></jsp:include>
		<div id="a_main">
			<div id="a_pagetitle">
				<span>예매현황</span>
			</div>
					
			<div id="a_ticket">
				
<form name="calendarFrm" id="calendarFrm" action="" method="GET">

<div class="calendar" >

		<!--날짜 네비게이션  -->
				<div class="navigation">
				<!-- 이전해 -->
					<a class="before_after_year" href="/admin?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
						<img class="cal_img" src="../resources/img/icon/left_year.png">				
					</a> 
				<!-- 이전달 -->
					<a class="before_after_month" href="/admin?year=${today_info.before_year}&month=${today_info.before_month}">
						<img class="cal_img" src="../resources/img/icon/left_month.png">				
					</a> 
				<!-- 지금 년월 -->
					<span class="this_month" onclick="location.href='/admin'">
						&nbsp;${today_info.search_year}. 
						<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
					</span>
				<!-- 다음달 -->	
					<a class="before_after_month" href="/admin?year=${today_info.after_year}&month=${today_info.after_month}">
						<img class="cal_img" src="../resources/img/icon/right_month.png">
					</a>
				<!-- 다음해 -->	 
					<a class="before_after_year" href="/admin?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
						<img class="cal_img" src="../resources/img/icon/right_year.png">
					</a>
				</div>				
			<table class="calendar_body">	
				<tr id="adminCal_info">
					<td colspan="7">a = 성인 / j = 청소년 / c = 아동</td>
				</tr>			
				<tr id="calendar_tr">
					<td class="day sun">일</td>
					<td class="day">월</td>
					<td class="day">화</td>
					<td class="day">수</td>
					<td class="day">목</td>
					<td class="day">금</td>
					<td class="day sat">토</td>
				</tr>
				<tr id="calendar_tr2">
					<td class="cntTr">a/ j/ c/ 합</td>
					<td class="cntTr">a/ j/ c/ 합</td>
					<td class="cntTr">a/ j/ c/ 합</td>
					<td class="cntTr">a/ j/ c/ 합</td>
					<td class="cntTr">a/ j/ c/ 합</td>
					<td class="cntTr">a/ j/ c/ 합</td>
					<td class="cntTr">a/ j/ c/ 합</td>
				</tr>				
				<tr>
			<c:forEach var="dateList" items="${dateList}" varStatus="date_status"> 

			<c:set var="cnt" value="${dateList.year}-${dateList.month+1}-${dateList.date}"/>
			<c:set var="a_cnt" value="0"/>
			<c:set var="j_cnt" value="0"/>
			<c:set var="c_cnt" value="0"/>	
			<c:set var="a_cnt_night" value="0"/>
			<c:set var="j_cnt_night" value="0"/>
			<c:set var="c_cnt_night" value="0"/>

				<c:choose>
					<c:when test="${dateList.value=='today'}">
						<td class="today">
							<div class="date">
								${dateList.date}
							</div>
							<div>
				<c:forEach var="ticketCnt" items="${ticketCnt}">		
					<c:choose>
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'allday'}">							
							<c:set var="a_cnt" value="${a_cnt+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt" value="${j_cnt+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt" value="${c_cnt+ticketCnt.t_c_cnt}" />
						</c:when>						
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'night'}">
							<c:set var="a_cnt_night" value="${a_cnt_night+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt_night" value="${j_cnt_night+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt_night" value="${c_cnt_night+ticketCnt.t_c_cnt}" />							
						</c:when>
					</c:choose>										
				</c:forEach>
							<table class="cntDetail">
								<tr>
									<td>allday</td>
									<td><c:out value="${a_cnt}"/></td>
									<td><c:out value="${j_cnt}"/></td>
									<td><c:out value="${c_cnt}"/></td>
									<td><c:out value="${a_cnt+j_cnt+c_cnt}"/></td>
								</tr>
								<tr>
									<td>night</td>
									<td><c:out value="${a_cnt_night}"/></td>
									<td><c:out value="${j_cnt_night}"/></td>
									<td><c:out value="${c_cnt_night}"/></td>
									<td><c:out value="${a_cnt_night+j_cnt_night+c_cnt_night}"/></td>
								</tr>
								<tr>
									<td>합</td>
									<td><c:out value="${a_cnt+a_cnt_night}"/></td>
									<td><c:out value="${j_cnt+j_cnt_night}"/></td>
									<td><c:out value="${c_cnt+c_cnt_night}"/></td>
									<td class="adminCal_total"><c:out value="${a_cnt+j_cnt+c_cnt+a_cnt_night+j_cnt_night+c_cnt_night}"/></td>									
								</tr>																
							</table>
							</div>
						</td>
					</c:when>
					<c:when test="${date_status.index%7==6}">
						<td class="sat_day">
							<div class="sat">
								${dateList.date}
							</div>
							<div>
				<c:forEach var="ticketCnt" items="${ticketCnt}">		
					<c:choose>
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'allday'}">							
							<c:set var="a_cnt" value="${a_cnt+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt" value="${j_cnt+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt" value="${c_cnt+ticketCnt.t_c_cnt}" />
						</c:when>						
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'night'}">
							<c:set var="a_cnt_night" value="${a_cnt_night+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt_night" value="${j_cnt_night+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt_night" value="${c_cnt_night+ticketCnt.t_c_cnt}" />							
						</c:when>
					</c:choose>										
				</c:forEach>
				<c:choose>
					<c:when test="${dateList.month eq ''}">
						
					</c:when>
					<c:otherwise>
							<table class="cntDetail">
								<tr>
									<td>allday</td>
									<td><c:out value="${a_cnt}"/></td>
									<td><c:out value="${j_cnt}"/></td>
									<td><c:out value="${c_cnt}"/></td>
									<td><c:out value="${a_cnt+j_cnt+c_cnt}"/></td>
								</tr>
								<tr>
									<td>night</td>
									<td><c:out value="${a_cnt_night}"/></td>
									<td><c:out value="${j_cnt_night}"/></td>
									<td><c:out value="${c_cnt_night}"/></td>
									<td><c:out value="${a_cnt_night+j_cnt_night+c_cnt_night}"/></td>
								</tr>
								<tr>
									<td>합</td>
									<td><c:out value="${a_cnt+a_cnt_night}"/></td>
									<td><c:out value="${j_cnt+j_cnt_night}"/></td>
									<td><c:out value="${c_cnt+c_cnt_night}"/></td>
									<td class="adminCal_total"><c:out value="${a_cnt+j_cnt+c_cnt+a_cnt_night+j_cnt_night+c_cnt_night}"/></td>									
								</tr>																
							</table>
					</c:otherwise>
				</c:choose>			
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
							
				<c:forEach var="ticketCnt" items="${ticketCnt}">		
					<c:choose>
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'allday'}">							
							<c:set var="a_cnt" value="${a_cnt+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt" value="${j_cnt+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt" value="${c_cnt+ticketCnt.t_c_cnt}" />
						</c:when>						
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'night'}">
							<c:set var="a_cnt_night" value="${a_cnt_night+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt_night" value="${j_cnt_night+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt_night" value="${c_cnt_night+ticketCnt.t_c_cnt}" />							
						</c:when>
					</c:choose>										
				</c:forEach>
				<c:choose>
					<c:when test="${dateList.month eq ''}">
						
					</c:when>
					<c:otherwise>
							<table class="cntDetail">
								<tr>
									<td>allday</td>
									<td><c:out value="${a_cnt}"/></td>
									<td><c:out value="${j_cnt}"/></td>
									<td><c:out value="${c_cnt}"/></td>
									<td><c:out value="${a_cnt+j_cnt+c_cnt}"/></td>
								</tr>
								<tr>
									<td>night</td>
									<td><c:out value="${a_cnt_night}"/></td>
									<td><c:out value="${j_cnt_night}"/></td>
									<td><c:out value="${c_cnt_night}"/></td>
									<td><c:out value="${a_cnt_night+j_cnt_night+c_cnt_night}"/></td>
								</tr>
								<tr>
									<td>합</td>
									<td><c:out value="${a_cnt+a_cnt_night}"/></td>
									<td><c:out value="${j_cnt+j_cnt_night}"/></td>
									<td><c:out value="${c_cnt+c_cnt_night}"/></td>
									<td class="adminCal_total"><c:out value="${a_cnt+j_cnt+c_cnt+a_cnt_night+j_cnt_night+c_cnt_night}"/></td>									
								</tr>																
							</table>
					</c:otherwise>
				</c:choose>										
							</div>
						</td>
					</c:when>
					<c:otherwise>
						<td class="normal_day">
							<div class="date">
								${dateList.date}
							</div>
							<div>
				<c:forEach var="ticketCnt" items="${ticketCnt}">		
					<c:choose>
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'allday'}">							
							<c:set var="a_cnt" value="${a_cnt+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt" value="${j_cnt+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt" value="${c_cnt+ticketCnt.t_c_cnt}" />
						</c:when>						
						<c:when test="${ticketCnt.t_date eq cnt && ticketCnt.t_time == 'night'}">
							<c:set var="a_cnt_night" value="${a_cnt_night+ticketCnt.t_a_cnt}" />
							<c:set var="j_cnt_night" value="${j_cnt_night+ticketCnt.t_j_cnt}" />
							<c:set var="c_cnt_night" value="${c_cnt_night+ticketCnt.t_c_cnt}" />							
						</c:when>
					</c:choose>										
				</c:forEach>
				<c:choose>
					<c:when test="${dateList.month eq ''}">
						
					</c:when>
					<c:otherwise>
							<table class="cntDetail">
								<tr>
									<td>allday</td>
									<td><c:out value="${a_cnt}"/></td>
									<td><c:out value="${j_cnt}"/></td>
									<td><c:out value="${c_cnt}"/></td>
									<td><c:out value="${a_cnt+j_cnt+c_cnt}"/></td>
								</tr>
								<tr>
									<td>night</td>
									<td><c:out value="${a_cnt_night}"/></td>
									<td><c:out value="${j_cnt_night}"/></td>
									<td><c:out value="${c_cnt_night}"/></td>
									<td><c:out value="${a_cnt_night+j_cnt_night+c_cnt_night}"/></td>
								</tr>
								<tr>
									<td>합</td>
									<td><c:out value="${a_cnt+a_cnt_night}"/></td>
									<td><c:out value="${j_cnt+j_cnt_night}"/></td>
									<td><c:out value="${c_cnt+c_cnt_night}"/></td>
									<td class="adminCal_total"><c:out value="${a_cnt+j_cnt+c_cnt+a_cnt_night+j_cnt_night+c_cnt_night}"/></td>									
								</tr>																
							</table>					
					</c:otherwise>
				</c:choose>

							</div>
						</td>
					</c:otherwise>
				</c:choose>
	
			</c:forEach>
				</tr>
			</table><!-- calendar_body -->
			</div><!-- calendar -->
			</form>				
				
			</div><!-- a_ticket -->		
		</div><!-- a_main -->
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>