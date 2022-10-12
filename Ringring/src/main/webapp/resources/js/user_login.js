/**
 * user 폴더 > 로그인 구현
 */
$(document).ready(function (){
	
	$("#loginBtn").on("click", function(){
		alert("호홓호")
		var id = $("input[name=id]").val();
		var pw = $("input[name=pw]").val();
		
		$.ajax({
			type: 'POST',
			url: '/login',
			data: {id:id, pw:pw},
			success: function(result){
				if(result ==0){
					alert("아이디와 비밀번호를 다시 확인해주세요.");
					return false;
				}else if(result ==9){
					alert("다시 시도해주세요.");
					return false;
				}else{
					window.location.href ="/mypage";
				}
			},
            error: function(e) {
            	alert("error: "+e);
            } 
			
		})
	});


})//docu닫음