/**
 * 예매 관련 js 파일
 */
$(document).ready(function (){
//종류선택을 클릭하면	
	$("#selectType").on("click", function(){		
		$("#selectTime").show();
	})
		
	
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
		
	})

	
//종일권 3종 기본값 입력	
function dayPrice(){
		var now_price = $("#selectPrice").val();
		console.log(now_price);
		$("#adult_price").text(now_price);
		$("#junior_price").text(now_price*0.8);
		$("#child_price").text(now_price*0.6);
		$(".booking_cnt input").val(0);
	}	
		
//야간권 3종 기본값 입력(종일권-10000원)	
function nightPrice(){
		var now_price = $("#selectPrice").val();
		now_price -= 10000;
		console.log(now_price);
		$("#adult_price").text(now_price);
		$("#junior_price").text(now_price*0.8);
		$("#child_price").text(now_price*0.6);	
		$(".booking_cnt input").val(0);
	}
	
	
//-버튼 클릭하면	
	$(".minus").on("click", function(){
		//해당 버튼의 바로 다음 value값 가져옴
		var cnt = $(this).next().val();
		
		//선택된 종류의 val값
		var time = $("#booking_time option:selected").val();
		//종류를 선택했을때,
		if(time != ""){
			//현재 수량이 0이 아닐때
			if(cnt != '0'){
				--cnt;
				$(this).next().val(cnt);
			}else{
				alert("현재 선택한 수량이 없습니다.");
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
			}else{
				alert("각 4매씩 구매 가능합니다.");
			}
		}else{	//아직 종류를 선택하지 않은경우
			alert("종류를 먼저 선택해주세요.");
		}

	})	
	
	
//	
	
})//docu닫음