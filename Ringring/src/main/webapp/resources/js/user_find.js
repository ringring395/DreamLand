/**
 * 아이디,비번찾기
 */
$(document).ready(function (){
/*아이디찾기*/
	//이름 정규식 체크해서 값 건지기
	$("#findid_name").on("keyup", function(){
		//이름 입력값
		var id_name = $("#findid_name").val();
		//이름 정규식
		var id_namecheck = /^[가-힣]+$/;
		//이름 정규식이 맞지 않으면?
		if(!id_namecheck.test(id_name)){
			$("#s_findid_name").html("이름에는 띄어쓰기, 숫자, 영어, 특수문자를 입력할 수 없습니다.").css("color","red");
		}else{
			$("#s_findid_name").html("");
		}
	})

	//전화번호 정규식 체크해서 값 건지기
	//전화번호 (합쳐서 가져오기)
	$("#findid_phone1").blur(function(){
		var id_phone1 = $("#findid_phone1").val();	//phone1 값
		var id_phonecheck = /^\d{3}$/;					//전화번호 정규식
		//전화번호 정규식 맞으면?
		if(id_phonecheck.test(id_phone1)){
			$("#s_findid_phone").html("");
			id_phone();
		}else{
			$("#s_findid_phone").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}		
	});
	
	$("#findid_phone2").blur(function(){
		var id_phone2 = $("#findid_phone2").val();	//phone2 값
		var id_phonecheck = /^\d{3,4}$/;			//전화번호 정규식
		//전화번호 정규식 맞으면?
		if(id_phonecheck.test(id_phone2)){
			$("#s_findid_phone").html("");
			id_phone();
		}else{
			$("#s_findid_phone").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}	
	});
	
	$("#findid_phone3").blur(function(){
		var id_phone3 = $("#findid_phone3").val();	//phone3 값
		var id_phonecheck = /^\d{3,4}$/;			//전화번호 정규식
		//전화번호 정규식 맞으면?
		if(id_phonecheck.test(id_phone3)){
			$("#s_findid_phone").html("");
			id_phone();
		}else{
			$("#s_findid_phone").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}
	});	

	function id_phone(){
		var id_phone1 = $("#findid_phone1").val();
		var id_phone2 = $("#findid_phone2").val();
		var id_phone3 = $("#findid_phone3").val();				
		//전화번호 입력값이 null값이 아니면
		if(id_phone1 != "" && id_phone2 != "" && id_phone3 != ""){
			//전화번호 전체 정규식 체크(9~11자 사이의 숫자로만 이뤄짐)
			var id_phone = id_phone1+id_phone2+id_phone3;
			var id_phonecheck = /^\d{9,11}$/;
			//정규식 체크되면
			if(id_phonecheck.test(id_phone)){
				//맨 앞에 숫자 하나 잘라서 넣기
				var id_phone2 = id_phone.substr(1,10);
				//hidden으로 숨겨둔 곳에 전체 전화번호넣음(-없이)
				$("#findid_totalphone").val(id_phone2);	
			}
		}
	};
	

/*비번 찾기*/
	//아이디 정규식 체크해서 값 건지기
	$("#findpw_id").on("keyup",function (){		
		var pw_id = $("#findpw_id").val();
		var pw_idcheck =/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-z]([-_\.]?[0-9a-z])*\.[a-z]{2,3}$/;
		//아이디 정규식 안맞으면??
		if(!pw_idcheck.test(pw_id)){
			$("#s_findpw_id").html("아이디는 올바른 형식의 이메일로 입력해주세요.").css("color","red");
		}else{
			$("#s_findpw_id").html("");
		}				
	});//아이디 정규식 닫음	
	
	//이름 정규식 체크해서 값 건지기
	$("#findpw_name").on("keyup", function(){
		//이름 입력값
		var pw_name = $("#findpw_name").val();
		//이름 정규식
		var pw_namecheck = /^[가-힣]+$/;
		//이름 정규식이 맞지 않으면?
		if(!pw_namecheck.test(pw_name)){
			$("#s_findpw_name").html("이름에는 띄어쓰기, 숫자, 영어, 특수문자를 입력할 수 없습니다.").css("color","red");
		}else{
			$("#s_findpw_name").html("");
		}
	})

	//전화번호 정규식 체크해서 값 건지기
	//전화번호 (합쳐서 가져오기)
	$("#findpw_phone1").blur(function(){
		var pw_phone1 = $("#findpw_phone1").val();	//phone1 값
		var pw_phonecheck = /^\d{3}$/;					//전화번호 정규식
		//전화번호 정규식 맞으면?
		if(pw_phonecheck.test(pw_phone1)){
			$("#s_findpw_phone").html("");
			pw_phone();
		}else{
			$("#s_findpw_phone").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}		
	});
	
	$("#findpw_phone2").blur(function(){
		var pw_phone2 = $("#findpw_phone2").val();	//phone2 값
		var pw_phonecheck = /^\d{3,4}$/;			//전화번호 정규식
		//전화번호 정규식 맞으면?
		if(pw_phonecheck.test(pw_phone2)){
			$("#s_findpw_phone").html("");
			pw_phone();
		}else{
			$("#s_findpw_phone").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}	
	});
	
	$("#findpw_phone3").blur(function(){
		var pw_phone3 = $("#findpw_phone3").val();	//phone3 값
		var pw_phonecheck = /^\d{3,4}$/;			//전화번호 정규식
		//전화번호 정규식 맞으면?
		if(pw_phonecheck.test(pw_phone3)){
			$("#s_findpw_phone").html("");
			pw_phone();
		}else{
			$("#s_findpw_phone").html("전화번호에는 숫자만 입력 가능합니다.").css("color","red");
		}
	});	

	function pw_phone(){
		var pw_phone1 = $("#findpw_phone1").val();
		var pw_phone2 = $("#findpw_phone2").val();
		var pw_phone3 = $("#findpw_phone3").val();				
		//전화번호 입력값이 null값이 아니면
		if(pw_phone1 != "" && pw_phone2 != "" && pw_phone3 != ""){
			//전화번호 전체 정규식 체크(9~11자 사이의 숫자로만 이뤄짐)
			var pw_phone = pw_phone1+pw_phone2+pw_phone3;
			var pw_phonecheck = /^\d{9,11}$/;
			//정규식 체크되면
			if(pw_phonecheck.test(pw_phone)){
				//맨 앞에 숫자 하나 잘라서 넣기
				var pw_phone2 = pw_phone.substr(1,10);
				//hidden으로 숨겨둔 곳에 전체 전화번호넣음(-없이)
				$("#findpw_totalphone").val(pw_phone2);	
			}
		}
	};	
	
	
	
	
	
	
})//전체닫음