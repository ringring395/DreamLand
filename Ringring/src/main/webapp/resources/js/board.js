/**
 * 고객센터 관련 js 파일
 */

$(document).ready(function (){
	
/* notice	공지사항,
 * faq		자주하는질문,
 * helplist	1:1문의 내역,
 * 
*/	
	//해당 줄 클릭하면 내용 보여짐.
	$(".table_show").on("click",function (){

		var content = $(this).nextAll("tr");
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