/**
 * 예매 현황 전체
 */
$(document).ready(function (){
	
	alert("ggg");
	
	
	var cnt_date = $(".cnt_date").val();
	console.log(cnt_date);

	if(cnt_date === '-1-'){
		console.log("ggg");
		$(this).next('div').hide();
	}
	
	
})//전체 닫음
