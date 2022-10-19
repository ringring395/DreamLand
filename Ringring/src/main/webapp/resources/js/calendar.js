/**
 * 예매 달력
 */

$(document).ready(function (){
	
calendarMaker($("#calendarDiv")), new Date();

var nowDate = new Date();

//오늘 날짜를 저장
var today_month = ("0"+(nowDate.getMonth()+1)).slice(-2);//현재 월(두 자릿수로 정리)
var today_date = ("0"+nowDate.getDate()).slice(-2);		// 현재 일(두 자릿수로 정리)
var now = (nowDate.getFullYear()+"-"+today_month+"-"+today_date);	//오늘 날짜

function calendarMaker(target, date){
	if(date == null || date ==undefined){
		date = new Date();
	}
	nowDate = date;
	if($(target).length >0){
		var year = nowDate.getFullYear();		
		var month = ("0"+(nowDate.getMonth() +1)).slice(-2);	//선택 월(두 자릿수로 정리)

		$(target).empty().append(assembly(year, month));
	}else{
		console.error("calendar target is empty!!");
		return;
	}
	
	//해당 월
	var thisMonth = new Date(nowDate.getFullYear(), nowDate.getMonth(), 1);
	//해당 달의 마지막 날
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

			//선택 일 추출하기(두 자릿수로 정리)
			var selectDate = ("0"+$(this).html()).slice(-2);	
			//선택 년/월/일 합치기
			var select = (year+"-"+month+"-"+selectDate);
			console.log("선택"+select);
			console.log("지금"+now);
			//오늘보다 예전이면
			if(select < now){
				alert("오늘 날짜부터 선택가능합니다. 😊😊");
			}else{	//최소 오늘부터 선택 가능.
				//클릭하면 옆에 옵션박스는 초기화해야함.
				$("#booking_time option:eq(0)").prop("selected", true);
				$(".booking_age input").val('');
				
				$(".calendar_table .select_day").removeClass("select_day");
				$(this).removeClass("select_day").addClass("select_day");
				
				getDay(select);							//선택한 날짜의 요일 구하기
								
			}

		});		
	}//calMove 닫음

	
//선택한 날짜의 요일 구하기 함수	
	function getDay(select){
		var dayKo = ['일', '월', '화', '수', '목', '금', '토'];
		var day = dayKo[new Date(select).getDay()];
		//$("#booking_day").text(day);
		
		//선택날짜가 주말(일,토)이면
		if(day=='일' || day=='토'){
			$("#selectPrice").val(60000);	//종일권(성인) 60000원
		//평일(월~금)이면	
		}else{
			$("#selectPrice").val(50000);	//종일권(성인) 50000원
		}
		//날짜선택하고나면 
		$("#selectBefore").hide();	//선택전 안내문구는 숨기고,
		$("#optBox").show();		//옵션박스 보이기
		
	}//getDay 닫음

	
	
	
	
}//calendarMaker 닫음	
	
})//docu닫음