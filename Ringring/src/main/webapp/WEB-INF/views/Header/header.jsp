<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더헤더</title>

<link rel="stylesheet" href="../../../resources/css/header.css">

</head>
<body>
	<div id="header">
		<div id="h_size">
			<div id="h_header">
				<div id="h_logo" onclick="location.href='../'">
					<img id="h_logo_img" alt="header_logo" src="../resources/img/logo.png">
				</div>

	<c:choose>
		<c:when test="${!empty id}">
			<c:choose>				
				<c:when test="${id eq 'admin@mail.com'}">
				<!-- 관리자 로그인 -->
					<div id="login_admin">
						<div class="m_Btn">
							관리자<br>로그인중
						</div>				
						<div id="h_logout" class="m_Btn" onclick="location.href='../logout'">
							관리자<br>로그아웃
						</div>
						<div id="h_ticketBuy" class="m_Btn" onclick="location.href='../select'">
							예매<br>바로가기
						</div>						
						<div id="h_managing" class="m_Btn" onclick="location.href='../admin'">
							관리자<br>페이지
						</div>
					</div>
				</c:when>
				
				<c:otherwise>
				<!-- 회원 로그인 -->
					<div id="login_user">
						<div id="h_user" class="m_Btn" onclick="location.href='../mypage'">
							${sessionScope.id}님💕
						</div>
						<div id="h_logout" class="m_Btn" onclick="location.href='../logout'">
							로그아웃
						</div>
						<div id="h_ticketBuy" class="m_Btn" onclick="location.href='../select'">
							예매 바로가기
						</div>
					</div>
				</c:otherwise>	
			</c:choose>
		</c:when>

		<c:otherwise>
		<!-- 로그인 X -->
			<div id="login_no">
				<div id="h_login" class="m_Btn" onclick="location.href='../login'">
					로그인
				</div>
				<div id="h_signup" class="m_Btn" onclick="location.href='../signup'">
					회원가입
				</div>
				<div id="h_ticketBuy" class="m_Btn" onclick="location.href='../select'">
					예매 바로가기
				</div>
			</div>		
		</c:otherwise>
	</c:choose>

			</div><!-- h_header -->
			<div id="navimenu">
				<ul class="menu">
					<li class="menu1"><a id="menu_a" href="../map">둘러보기</a>
						<ul id="menu2_sub" class="menusub_none">
							<li class="sub_none_li">&nbsp;</li>
							<li class="sub_none_li">&nbsp;</li>
							<li class="sub_none_li">&nbsp;</li>
						</ul>
					</li>
					<li class="menu1">이벤트
						<ul id="menu2_sub" class="menusub">
							<li class="sub_li">
								<a id="menu_a" href="../event">행사 일정</a></li>
							<li class="sub_li">
								<a id="menu_a" href="../sale">할인 혜택</a></li>
							<li class="sub_li">
								<a id="menu_a" href="../parade">퍼레이드 일정</a></li>
						</ul>
					</li>
					<li class="menu1"><a id="menu_a" href="../here">오시는길</a>
						<ul id="menu2_sub" class="menusub_none">
							<li class="sub_none_li">&nbsp;</li>
							<li class="sub_none_li">&nbsp;</li>
							<li class="sub_none_li">&nbsp;</li>
						</ul>					
					</li>
					<li class="menu1">고객센터
						<ul id="menu4_sub" class="menusub">
							<li class="sub_li">
								<a id="menu_a" href="../notice">공지사항</a></li>
							<li class="sub_li">
								<a id="menu_a" href="../faq">자주하는 질문</a></li>
							<li class="sub_li">
								<a id="menu_a" href="../help">1:1 문의</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>