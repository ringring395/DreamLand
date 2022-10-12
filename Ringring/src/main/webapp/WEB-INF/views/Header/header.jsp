<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../../../resources/css/header.css">

</head>
<body>
	<div id="header">
		<div id="h_size">
			<div id="h_header">
				<div id="h_logo" onclick="location.href='../'">
					<h3>로고로고</h3>
				</div>

				<div id="login_no">
					<div id="h_login" class="m_Btn" onclick="location.href='../login'">
						<p>로그인</p>
					</div>
					<div id="h_signup" class="m_Btn" onclick="location.href='../signup'">
						<p>회원가입</p>
					</div>
					<div id="h_ticketBuy" class="m_Btn" onclick="location.href='../booking'">
						<p>예매 바로가기</p>
					</div>
				</div>

				<div id="login_user">
					<div id="h_user" class="m_Btn" onclick="location.href='../mypage'">
						<p>로그인된 아이디</p>
					</div>
					<div id="h_logout" class="m_Btn" onclick="location.href='../logout'">
						<p>로그아웃</p>
					</div>
					<div id="h_ticketBuy" class="m_Btn" onclick="location.href='../booking'">
						<p>예매 바로가기</p>
					</div>
				</div>

				<div id="login_admin">
					<div class="m_Btn">
						<p>관리자<br>로그인중</p>
					</div>				
					<div id="h_logout" class="m_Btn" onclick="location.href='../logout'">
						<p>관리자<br>로그아웃</p>
					</div>
					<div id="h_managing" class="m_Btn" onclick="location.href='../admin'">
						<p>관리자<br>페이지</p>
					</div>
				</div>
			</div>
			<div id="navimenu">
				<ul class="menu">
					<li class="menu1"><a href="../map">둘러보기</a></li>
					<li class="menu2">이벤트
						<ul id="menu2_sub" class="menusub">
							<li><a href="../event">행사 일정</a></li>
							<li><a href="../sale">할인 혜택</a></li>
							<li><a href="../parade">퍼레이드 일정</a></li>
						</ul>
					</li>
					<li class="menu3"><a href="../here">오시는길</a></li>
					<li class="menu4">고객센터
						<ul id="menu4_sub" class="menusub">
							<li><a href="../notice">공지사항</a></li>
							<li><a href="../faq">자주하는 질문</a></li>
							<li><a href="../help">1:1 문의</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>