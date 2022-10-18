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
		$("#adult_price").val(now_price);
		$("#junior_price").val(now_price*0.8);
		$("#child_price").val(now_price*0.6);
	}	
		
//야간권 3종 기본값 입력(종일권-10000원)	
function nightPrice(){
		var now_price = $("#selectPrice").val();
		now_price -= 10000;
		console.log(now_price);
		$("#adult_price").val(now_price);
		$("#junior_price").val(now_price*0.8);
		$("#child_price").val(now_price*0.6);		
	}
	
	
//-버튼 클릭하면	
	$(".minus").on("click", function(){
		var price = $(this).next().val();
		alert(price);
	})
	
	
//+버튼 클릭하면	
	$(".plus").on("click", function(){
		var price = $(this).prev().val();
		alert(price);
	})	
	
})//docu닫음