/**
 * 게시판 페이징 + 검색창
 */

$(document).ready(function (){
	
	//공지사항_검색버튼을 클릭하면
    $("#notice_searchBtn").on("click",function (){

    	//pageNum에 1을 초기화
        $("input[name='pageNum']").val("1");
        //form태그를 submit
        $("#searchBtn").submit();
    })
    
	//자주하는질문_검색버튼을 클릭하면
    $("#faq_searchBtn").on("click",function (){

    	//pageNum에 1을 초기화
        $("input[name='pageNum']").val("1");
        //form태그를 submit
        $("#searchBtn").submit();
    })    
   
    
})