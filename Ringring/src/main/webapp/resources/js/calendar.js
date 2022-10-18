/**
 * 예매 달력
 */

$(document).ready(function (){
	
calendarMaker($("#calendarDiv")), new Date();

var nowDate = new Date();

function calendarMaker(target, date){
	if(date == null || date ==undefined){
		date = new Date();
	}
	nowDate = date;
	if($(target).length >0){
		var year = nowDate.getFullYear();
		var month = nowDate.getMonth() +1;
		$(target).empty().append(assembly(year, month));
	}else{
		console.error("calendar target is empty!!");
		return;
	}
	
	//현재월
	var thisMonth = new Date(nowDate.getFullYear(), nowDate.getMonth(), 1);
	var thisLastDay = new Date(nowDate.getFullYear(), nowDate.getMonth()+1, 0);
	
	var tag = "<tr>";
	var cnt = 0;
	
	for(i=0; i<thisMonth.getDay(); i++){
		tag +="<td></td>";
		cnt++;
	}
	
	for(i=1; i<=thisLastDay.getDate(); i++){
		if(cnt%7 == 0){
			tag += "<tr>";
		}
		tag+="<td>"+i+"</td>";
		cnt++;
		if(cnt%7 == 0){
			tag += "</td>";
		}
	}
	$(target).find("#set_date").append(tag);
	calMove();
	
	function assembly(year, month){
		var calendar_html = 
			"<table class='calendar_table'>"+
			"<colgroup>"+
			"<col><col><col><col><col><col><col>"+
			"</colgroup>"+
			"<thead class='cal_date'>"+
			"<th><button class='prev'><</button></th>"+
			"<th colspan='5'><p><span>"+year+"</span>년 <span>"+month+"</span>월</p></th>"+
			"<th><button class='next'>></button></th>"+
			"</thead>"+
			"<thead class='cal_week'>"+
			"<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>"+
			"</thead>"+
			"<tbody id='set_date'></tbody>"+
			"</table>";
		return calendar_html;			
	}//assembly 닫음
	
	

	
	function calMove(){
		//이전달 prev 클릭
		$(".calendar_table").on("click", ".prev", function(){
			nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth()-1, nowDate.getDate());
			calendarMaker($(target), nowDate);
		});
		//다음달 next 클릭
		$(".calendar_table").on("click", ".next", function(){
			nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth()+1, nowDate.getDate());
			calendarMaker($(target), nowDate);
		});
		//일자 선택 클릭
		$(".calendar_table").on("click", "td", function(){
			$(".calendar_table .select_day").removeClass("select_day");
			$(this).removeClass("select_day").addClass("select_day");
			//선택한 월/일/요일 출력하기
			var selectDate = $(this).html();		//선택 일 추출하기
			$("#booking_date").text(selectDate);	//선택 일 출력
			$("#booking_month").text(month);		//해당 월 출력
			var select = (year+"-"+month+"-"+selectDate);
			getDay(select);							//선택한 날짜의 요일 구하기
			
		});		
	}//calMove 닫음

	
//선택한 날짜의 요일 구하기 함수	
	function getDay(select){
		var dayKo = ['일', '월', '화', '수', '목', '금', '토'];
		var day = dayKo[new Date(select).getDay()];
		$("#booking_day").text(day);
		$("#selectPrice").val(40000);
	}//getDay 닫음

	
	
	
	
}//calendarMaker 닫음	
	
})//docu닫음