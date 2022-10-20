/**
 * ticket 폴더 > 구매 js 파일
 */
$(document).ready(function (){
	
	var id = $("input[name=user]").val();
	
//구매 버튼을 클릭하면 
$("#ticketBtn").on("click", function(){
	//상품 합계를 체크
	var priceChk = $("#totalPrice").text();

	//로그인되지 않으면
	if(id == null || id==""){
		alert("티켓 구매는 로그인이 필요합니다.");
		location.href="/login";
		
	}else{//로그인 되어있고,
		//상품 합계가 비어있지 않으면 구매를 진행함.
		if(priceChk != ""){
			
			var t_date = $("#selectDate").val();	//예매 날짜
			var t_day = $("#selectDay").val();		//예매 요일
			var t_time = $("#selectTime").val();	//예매 타입
			var t_a_price = $("#selectDefault").val();	//예매할 어른 가격
			var t_j_price = t_a_price*0.8;	//예매할 청소년 가격
			var t_c_price = t_a_price*0.6;	//예매할 어린이 가격
			
			var t_a_cnt = $("#adult_cnt").val();	//예매할 성인 수량
			var t_j_cnt = $("#junior_cnt").val();	//예매할 청소년 수량
			var t_c_cnt = $("#child_cnt").val();	//예매할 어린이 수량
			
			var t_total = $("#bookingTotal").val();	//예매 총가격
			
			//선택한 티켓 구매 함수 호출
			ticketOrder({id:id, t_date:t_date, t_day:t_day, t_time:t_time,
				t_a_price:t_a_price, t_j_price:t_j_price, t_c_price:t_c_price,
				t_a_cnt:t_a_cnt, t_j_cnt:t_j_cnt, t_c_cnt:t_c_cnt, t_total:t_total});
						
		}else{
			alert("종류와 수량을 선택해주세요.");
		}
		
	}
	

	
})

//선택한 티켓 구매 함수 선언(선택한 데이터 담기)
function ticketOrder(order){
	console.log(order);

    $.ajax({
        url:'/order',
        method : 'POST',
        data: JSON.stringify(order),
        contentType : 'application/json; charset=UTF-8',
        dataType : 'json',
        success :function(result){
            alert( JSON.stringify(order));
            location.href="/order";
            
        },error: function(e){
			alert("티켓 구매 실패 👽👽");
		}
	})//ajax닫음

}//ticketOrder 닫음


})//전체 닫음