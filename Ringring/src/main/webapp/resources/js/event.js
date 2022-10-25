/**
 * 이벤트 폴더 js파일
 */

$(document).ready(function (){
	
/* 더보기 기능*/	
	$(".event_more").on("click", function(){
		var contents = $(this).next("div");
		
		if(contents.is(":visible")){
			contents.slideUp();
		}else{
			contents.slideDown();
		}		
	})
	
	
	
/*
 * sale 페이지
*/	

	
	
	
})//docu닫음