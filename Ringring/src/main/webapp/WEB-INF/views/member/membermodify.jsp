<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/member.css">
<title>회원정보 수정</title>
</head>
<jsp:include page="../Header/header.jsp"></jsp:include>

<body>
	<div id="wrap">
		<div id="pagetitle">
			<span>정보 수정</span>
		</div>
		
		<div id="membermodify">
			<form action="/membermodify" method="post">
				<div id="modify">
					<div class="modify_info">
						<input readonly type="text" placeholder="아이디(메일주소)" name="id">
						<span>변경불가</span>
					</div>
					
					<div class="modify_info">
						<input type="text" placeholder="비밀번호" name="pw">
						<span id="spw"></span>
					</div>

					<div class="modify_info">
						<input type="text" placeholder="비밀번호 재확인" name="pw2">
						<span id="spw2"></span>
					</div>

					<div class="modify_info">
						<input type="text" placeholder="이름" name="name">
						<span id="sna"></span>
					</div>

					<div>
						<input type="tel" class="modify_tel" name="phone1" placeholder="010">-
						<input type="tel" class="modify_tel" name="phone2">
						<input type="tel" class="modify_tel" name="phone3">
						<button>중복 확인</button>
					</div>
					
					<input type="submit" id="modifyBtn" value="정보수정">					
				</div>
			</form>
				
				<div id="resignDiv">
					<div id="resignBtn">회원 탈퇴</div>
				</div>
		</div><!-- membermodify -->	
	</div>
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>