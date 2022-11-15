/**
 * 관리자 페이지 js 파일
 */
$(document).ready(function (){
	
/*
 * 서브메뉴_선택된 페이지 컬러 넣기
 */	
	// submenu_where의 value 값을 가져오기
	var where = $(".submenu_where").val();
	
	if(where == "admin"){
		$(".a_menu_li:nth-child(1)").css("background-color","#f8e00e");
	}
	else if(where =="event"){
		$(".a_menu_li:nth-child(2)").css("background-color","#f8e00e");
	}
	else if(where == "board"){
		$(".a_menu_li:nth-child(3)").css("background-color","#f8e00e");
	}
	else if(where == "helplist"){
		$(".a_menu_li:nth-child(4)").css("background-color","#f8e00e");
	}
	else if(where == "user"){
		$(".a_menu_li:nth-child(5)").css("background-color","#f8e00e");
	}
	
	
	
	
	
	
/* admin_helplist	1:1문의(관리자)
 * 
*/	
	//해당 줄 클릭하면 내용 보여짐.
	$(".table_show").on("click",function (){

		var content = $(this).next("tr");
		
		//보이는상태이면		
		if(content.is(":visible")){
			//사라지게!
			content.slideUp();
		}else{	//안보이는 상태이면
			//보여지게!
			content.slideDown();
		}
	})


})//docu닫음