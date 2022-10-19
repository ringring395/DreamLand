/**
 * 예매 관련 js 파일
 */
$(document).ready(function (){
		
	
//(select)종일 vs.야간을 선택하면	
	$("#booking_time").on("change", function(){
		//선택된 종류의 val값
		var time = $("#booking_time option:selected").val();
		
		//종일 or 야간이면
		if(time == "allday"){
			console.log(time);
			dayPrice();
		}else if(time == "night"){
			console.log(time);
			nightPrice();			
		}else{	//종류 선택이 되지 않으면
			alert("종일권과 야간권 중에서 선택해주세요.");
		}
		$("#selectTime").val(time);	//종일 or 야간권인지 값 체크
	})

	
//종일권 3종 기본값 입력	
function dayPrice(){
		var dayPrice = $("#selectPrice").val();
		$("#selectDefault").val(dayPrice);
		console.log(dayPrice);
		$("#adult_price").text(addComma(dayPrice));
		$("#junior_price").text(addComma(dayPrice*0.8));
		$("#child_price").text(addComma(dayPrice*0.6));
		$(".booking_cnt input").val(0);
		$("#totalPrice").empty();
	}	
		
//야간권 3종 기본값 입력(종일권-10000원)	
function nightPrice(){
		var nightPrice = $("#selectPrice").val()-10000;
		$("#selectDefault").val(nightPrice);
		console.log(nightPrice);
		$("#adult_price").text(addComma(nightPrice));
		$("#junior_price").text(addComma(nightPrice*0.8));
		$("#child_price").text(addComma(nightPrice*0.6));	
		$(".booking_cnt input").val(0);
		$("#totalPrice").empty();
	}
	
	
//-버튼 클릭하면	
	$(".minus").on("click", function(){
		//해당 버튼의 바로 다음 value값 가져옴
		var cnt = $(this).next().val();
		
		//선택된 종류의 val값
		var time = $("#booking_time option:selected").val();
		//종류를 선택했을때,
		if(time != ""){
			//현재 수량이 0이면
			if(cnt == '0'){
				alert("현재 선택한 수량이 없습니다.");
			}else{
				--cnt;
				$(this).next().val(cnt);
				sumPrice();
			}
		}else{	//아직 종류를 선택하지 않은경우
			alert("종류를 먼저 선택해주세요.");
		}
		
	})
	
	
//+버튼 클릭하면	
	$(".plus").on("click", function(){
		//해당 버튼의 바로 앞 value값 가져옴.
		var cnt = $(this).prev().val();
		
		//선택된 종류의 val값
		var time = $("#booking_time option:selected").val();
		//종류를 선택했을때,
		if(time != ""){
			//나이별 4매씩 구매가능.
			if(cnt <4){
				++cnt;
				$(this).prev().val(cnt);
				sumPrice();
			}else{
				alert("각 4장씩 구매 가능합니다.");
			}
		}else{	//아직 종류를 선택하지 않은경우
			alert("종류를 먼저 선택해주세요.");
		}

	})	
		
//수량이 바뀌게 되면 합계를 계산하는 함수
function sumPrice(){
	//가격
	var a_price = $("#selectDefault").val();	//선택한 요일+시간의 성인 가격	
	var j_price = a_price*0.8;					//선택한 요일+시간의 청소년 가격
	var c_price = a_price*0.6;					//선택한 요일+시간의 어린이 가격	
	//수량
	var a_cnt = $("#adult_cnt").val();			//선택한 성인 수량
	var j_cnt = $("#junior_cnt").val();		//선택한 청소년 수량
	var c_cnt = $("#child_cnt").val();			//선택한 어린이 수량	
	//나이별 가격*수량
	var sumPrice = (a_price*a_cnt)+(j_price*j_cnt)+(c_price*c_cnt);
	
	$("#totalPrice").text(addComma(sumPrice));
	
}//sumPrice 닫음
	
	
	
//천단위 콤마 함수 선언
function addComma(won){
	return won.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}	
	
	
	
	
	
	
	
	
	
	

	
})//docu닫음