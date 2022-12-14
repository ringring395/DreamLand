/**
 * 회원 user 폴더 js적용
 */
$(document).ready(function (){
	
/* 회원가입 */
	//아이디 (이메일) 정규식
	$("input[name=id]").on("keyup",function (){
		
		var id = $(this).val();
		var idcheck =/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-z]([-_\.]?[0-9a-z])*\.[a-z]{2,3}$/;
		
		if(!idcheck.test(id)){
			$("#sid").html("아이디는 올바른 형식의 이메일로 입력해주세요.").css("color","red");
		}else{
			$("#sid").html("올바른 이메일 형식입니다.").css("color","blue");
		}		
		
	});//아이디 정규식 닫음
	
	
//아이디 중복 체크 버튼 누르면
	$("#idBtn").on("click", function(){
		var id = $("input[name=id]").val();
		console.log(id);
		idcheck(id);
	});

//아이디 중복체크 함수 선언	
	function idcheck(id){
		
        $.ajax({				
            type: 'GET',
            url: '/idcheck',
            data: {id:id},
            dataType: 'json',
            success: function(result) {
                if (result == '0') {
                	$("#sid").html("");
                	$("#sid2").html("사용할 수 있는 아이디입니다.").css("color","blue");
                } else {
                	$("#sid").html("");
                	$("#sid2").html("사용 중인 아이디 입니다.").css("color","red");
                }
            },
            error: function(e) {
            	alert("error: "+e);
            } 					
        });			
	}//idcheck 닫음
		
	
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
	
	
//전화번호 (합쳐서 가져오기)
	$("input[name=phone1]").blur(function(){
		var phone1 = $("input[name=phone1]").val();
		var phonecheck = /^\d{3}$/;
		if(phonecheck.test(phone1)){
			$("#sph").html("").css("color","red");
			phone();
		}else{
			$("#sph").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}		
	});
	
	$("input[name=phone2]").blur(function(){
		var phone2 = $("input[name=phone2]").val();
		var phonecheck = /^\d{3,4}$/;
		if(phonecheck.test(phone2)){
			$("#sph").html("").css("color","red");
			phone();
		}else{
			$("#sph").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}	
	});
	
	$("input[name=phone3]").blur(function(){
		var phone3 = $("input[name=phone3]").val();
		var phonecheck = /^\d{3,4}$/;
		if(phonecheck.test(phone3)){
			$("#sph").html("").css("color","red");
			phone();
		}else{
			$("#sph").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}
	});	

	function phone(){
		var phone1 = $("input[name=phone1]").val();
		var phone2 = $("input[name=phone2]").val();
		var phone3 = $("input[name=phone3]").val();
				
		//전화번호 입력값이 null값이 아니면
		if(phone1 != "" && phone2 != "" && phone3 != ""){
			//전화번호 전체 정규식 체크(9~11자 사이의 숫자로만 이뤄짐)
			var phone = phone1+phone2+phone3;
			var phonecheck = /^\d{9,11}$/;
			//정규식 체크되면
			if(phonecheck.test(phone)){
				//hidden으로 숨겨둔 곳에 전체 전화번호넣음(-없이)
				$("#totalphone").val(phone);				
			}
		}
	};
	

	
	
	
	
	
	
})//docu닫음