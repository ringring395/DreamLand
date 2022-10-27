<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/user_modify.js"></script>
<title>회원정보 수정</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>정보 수정</span>
		</div>
		
		<div id="usermodify">
			<form action="/usermodify" method="post">
				<div id="modify">
					<div class="modify_info">
						<input readonly type="text" value="${userdetail.id}" id="modify_id" name="id">
						<br><span id="sid"></span>
					</div>
					
					<div class="modify_info">
						<input type="password" placeholder="비밀번호" name="pw">
						<br><span id="spw"></span>
					</div>

					<div class="modify_info">
						<input type="password" placeholder="비밀번호 재확인" name="pw2">
						<br><span id="spw2"></span>
					</div>

					<div class="modify_info">
						<input type="text" value="${userdetail.name}" name="name">
						<br><span id="sna"></span>
					</div>

					<div>
						<input type="tel" class="modify_tel" name="phone1" value="010">-
						<input type="tel" class="modify_tel" name="phone2" id="modify_phone2">
						<input type="tel" class="modify_tel" name="phone3" id="modify_phone3">
						<input type="hidden" class="modify_tel" id="modify_phone" value="${userdetail.phone}">
						<input type="hidden" class="modify_tel" name="phone">
						<label>중복 확인</label>
						<br><span id="sph"></span>	
					</div>
					
					<input type="submit" id="modifyBtn" value="정보수정">					
				</div>
			</form>
				
				<div id="resignDiv">
					<div id="resignBtn" onclick="location.href='../resign'">회원 탈퇴</div>
				</div>
		</div><!-- usermodify -->	
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>