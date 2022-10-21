/**
 * ticket 폴더 > 티켓 선택 js 파일
 */
$(document).ready(function (){
		
	
//(select)종일 vs.야간을 선택하면	
	$("#select_time").on("change", function(){
		//선택된 종류의 val값
		var time = $("#select_time option:selected").val();
		$("input[name=e_discount]").prop("checked", false);
		
		//종일 or 야간이면
		if(time == "allday"){
			console.log(time);
			dayPrice();
			$("#discountBtn").show();	//할인버튼 보이기
		}else if(time == "night"){
			console.log(time);
			nightPrice();
			$("#discountBtn").show();	//할인버튼 보이기
		}else{	//종류 선택이 되지 않으면
			alert("종일권과 야간권 중에서 선택해주세요.");
		}
		$("#selectTime").val(time);	//종일 or 야간권인지 값 담기
	})

	
//종일권 3종 기본값 입력	
function dayPrice(){
		var dayPrice = $("#selectPrice").val();
		$("#selectDefault").val(dayPrice);
		console.log(dayPrice);
		$("#adult_price").text(addComma(dayPrice));
		$("#junior_price").text(addComma(dayPrice*0.8));
		$("#child_price").text(addComma(dayPrice*0.6));
		$(".select_cnt input").val(0);
		$("#totalPrice").empty();
		$("#finalPrice").empty();
	}	
		
//야간권 3종 기본값 입력(종일권-10000원)	
function nightPrice(){
		var nightPrice = $("#selectPrice").val()-10000;
		$("#selectDefault").val(nightPrice);
		console.log(nightPrice);
		$("#adult_price").text(addComma(nightPrice));
		$("#junior_price").text(addComma(nightPrice*0.8));
		$("#child_price").text(addComma(nightPrice*0.6));	
		$(".select_cnt input").val(0);
		$("#totalPrice").empty();
		$("#finalPrice").empty();
	}
	
	
//-버튼 클릭하면	
	$(".minus").on("click", function(){
		//해당 버튼의 바로 다음 value값 가져옴
		var cnt = $(this).next().val();
		
		//선택된 종류의 val값
		var time = $("#select_time option:selected").val();
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
		var time = $("#select_time option:selected").val();
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
	var j_cnt = $("#junior_cnt").val();			//선택한 청소년 수량
	var c_cnt = $("#child_cnt").val();			//선택한 어린이 수량	
	//나이별 가격*수량
	var sumPrice = (a_price*a_cnt)+(j_price*j_cnt)+(c_price*c_cnt);
	
	$("#totalPrice").text(addComma(sumPrice));
	$("#selectTotal").val(sumPrice);
	$("#finalPrice").text(addComma(sumPrice));
	$("#finalTotal").val(sumPrice);				//최종금액을 전달될 hidden input에 담기
	
	//할인선택 클릭하면
	$("#discountBtn").on("click", function(){
		$("#discountBox").slideDown();
		
		//할인 종류(라디오버튼)을 선택하면
		$("input[name=e_discount]").on("click", function(){
			var discount = $(this).val();
			finalPrice(discount);
		})		
	})

}//sumPrice 닫음
	

//최종금액을 산출하는 함수
function finalPrice(discount){
	var total = $("#selectTotal").val();
	var count = parseFloat(discount/100).toFixed(2);
	var final = total-total*count;
	$("#finalPrice").text(addComma(final));	//최종금액에 넣기
	$("#finalTotal").val(final);			//최종금액을 전달될 hidden input에 담기
}


//천단위 콤마 함수 선언
function addComma(won){
	return won.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

	
//var id = $("input[name=user]").val();
//
////구매 버튼을 클릭하면 
//$("#ticketBtn").on("click", function(){
//	//상품 합계를 체크
//	var priceChk = $("#totalPrice").text();
//
//	//로그인되지 않으면
//	if(id == null || id==""){
//		alert("티켓 구매는 로그인이 필요합니다.");
//		location.href="/login";
//		
//	}else{//로그인 되어있고,
//		//상품 합계가 비어있지 않으면 구매를 진행함.
//		if(priceChk != ""){
//			
//			var t_date = $("#selectDate").val();	//예매 날짜
//			var t_day = $("#selectDay").val();		//예매 요일
//			var t_time = $("#selectTime").val();	//예매 타입
//			var t_a_price = $("#selectDefault").val();	//예매할 어른 가격
//			var t_j_price = t_a_price*0.8;	//예매할 청소년 가격
//			var t_c_price = t_a_price*0.6;	//예매할 어린이 가격
//			
//			var t_a_cnt = $("#adult_cnt").val();	//예매할 성인 수량
//			var t_j_cnt = $("#junior_cnt").val();	//예매할 청소년 수량
//			var t_c_cnt = $("#child_cnt").val();	//예매할 어린이 수량
//			
//			var t_total = $("#selectTotal").val();	//예매 총가격
//			
//			//선택한 티켓 구매 함수 호출
//			ticketOrder({id:id, t_date:t_date, t_day:t_day, t_time:t_time,
//				t_a_price:t_a_price, t_j_price:t_j_price, t_c_price:t_c_price,
//				t_a_cnt:t_a_cnt, t_j_cnt:t_j_cnt, t_c_cnt:t_c_cnt, t_total:t_total});
//						
//		}else{
//			alert("종류와 수량을 선택해주세요.");
//		}
//		
//	}
//	
//
//	
//})
//
////선택한 티켓 구매 함수 선언(선택한 데이터 담기)
//function ticketOrder(order){
//	console.log(order);
//
//  $.ajax({
//      url:'/order',
//      method : 'POST',
//      data: JSON.stringify(order),
//      contentType : 'application/json; charset=UTF-8',
//      dataType : 'json',
//      success :function(result){
//          location.href="/order";
//          
//      },error: function(e){
//			alert("티켓 구매 실패 👽👽");
//		}
//	})//ajax닫음
//
//}//ticketOrder 닫음	
	

})//docu닫음