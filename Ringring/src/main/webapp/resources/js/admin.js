/**
 * 관리자 페이지 js 파일
 */
$(document).ready(function (){
	
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