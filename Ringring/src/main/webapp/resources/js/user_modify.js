/**
 * 회원 정보수정 js파일
 */
$(document).ready(function (){

	
//아이디	
	$("#modify_id").on("click", function(){
		
		$("#sid").html("아이디는 변경할 수 없습니다.").css("color","blue");
	})
	
//비밀번호 pw 정규식
	$("input[name=pw]").on("keyup",function (){
		
		var pw = $(this).val();
		var pwcheck =/(?=.*\d)(?=.*[a-z]).{8,11}$/;
		
		if(!pwcheck.test(pw)){
			$("#spw").html("비밀번호는 8~15자의 영어소문자, 숫자를 조합하여 입력해주세요.").css("color","red");
		}else{
			$("#spw").html("").css("color","blue");
		}		
		
	});//비밀번호 정규식 닫음
	
	
//비밀번호 pw2 확인
	$("input[name=pw2]").on("keyup", function(){
		
		var pw = $("input[name=pw]").val();
		var pw2 = $(this).val();
		var pwcheck =/(?=.*\d)(?=.*[a-z]).{8,11}$/;

		//비밀번호 정규식이 맞으면
		if(pwcheck.test(pw)){
			//일치하는지 확인해보자.
			if(pw2 == pw){				
				$("#spw2").html("비밀번호가 일치합니다.").css("color","blue");
			}else{
				$("#spw2").html("입력하신 두 비밀번호가 일치하지 않습니다.").css("color","red");
			}
		}
	
	});//비밀번호 pw2 닫음

	
//이름 정규식
	$("input[name=name]").on("keyup",function (){
		
		var name = $(this).val();
		var namecheck =/^[가-힣]+$/;
		
		if(!namecheck.test(name)){
			$("#sna").html("이름에는 띄어쓰기, 숫자, 영어, 특수문자를 입력할 수 없습니다.").css("color","red");
		}else{
			$("#sna").html("").css("color","blue");
		}		
		
	});//이름 정규식 닫음	

	
//전화번호 넣기
	var phone = $("#modify_phone").val();
	
	$("#modify_phone2").val(phone.substr(2, 4));
	$("#modify_phone3").val(phone.substr(6, 4));	
	

	
//전화번호 (합쳐서 가져오기)
	$("input[name=phone1]").blur(function(){
		var phone1 = $("input[name=phone1]").val();
		var phonecheck = /^\d{3}$/;
		if(phonecheck.test(phone1)){
			$("#sph").html("").css("color","red");
			modi_phone();
		}else{
			$("#sph").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}		
	});
	
	$("input[name=phone2]").blur(function(){
		var phone2 = $("input[name=phone2]").val();
		var phonecheck = /^\d{3,4}$/;
		if(phonecheck.test(phone2)){
			$("#sph").html("").css("color","red");
			modi_phone();
		}else{
			$("#sph").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}	
	});
	
	$("input[name=phone3]").blur(function(){
		var phone3 = $("input[name=phone3]").val();
		var phonecheck = /^\d{3,4}$/;
		if(phonecheck.test(phone3)){
			$("#sph").html("").css("color","red");
			modi_phone();
		}else{
			$("#sph").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}
	});	

	function modi_phone(){
		var phone1 = $("input[name=phone1]").val();
		var phone2 = $("input[name=phone2]").val();
		var phone3 = $("input[name=phone3]").val();
				
		//전화번호 입력값이 null값이 아니면
		if(phone1 != "" && phone2 != "" && phone3 != ""){
			//전화번호 전체 정규식 체크(9~11자 사이의 숫자로만 이뤄짐)
			var phone = phone1+phone2+phone3;
			console.log(phone);
			var phonecheck = /^\d{9,11}$/;
			//정규식 체크되면
			if(phonecheck.test(phone)){
				//hidden으로 숨겨둔 곳에 전체 전화번호넣음(-없이)
				$("input[name=phone]").val(phone);
				console.log($("input[name=phone]").val());
			}
		}
	};	


//빈값체크
	var pwChk = $("input[name=pw]").val();
	var pw2Chk = $("input[name=pw2]").val();
//	if(pwChk == null || pw2Chk == null){
//		alert("비밀번호를 입력해주세요.");
//	}

	

})//전체 닫음