/**
 * 고객센터 관련 js 파일
 */

$(document).ready(function (){
	
/* 공지사항 */
	//해당 줄 클릭하면 내용 보여짐.
	$(".n_table_show").on("click",function (){

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
	

	

/* 자주하는질문 */
	//해당 줄 클릭하면 내용 보여짐.
	$(".f_table_show").on("click",function (){

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