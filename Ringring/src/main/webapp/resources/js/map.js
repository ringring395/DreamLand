/**
 * map js 파일
 */
$(document).ready(function(){	
	
	var info=""

//버튼1을 클릭하면 = 놀이기구1 소개
//rides1 = 대관람차
	$("#Btn1").on("click", function(){
		//타이틀
		$("#map_modal_title").text("대관람차");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides1_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides1_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides1_3.jpg");
		//소개글
		info +="<table><tr><td>";
		
		$("#modal-text").text("DreamLand 전체를 조망할 수 있는 대관람차에서 잊지 못할 추억💕을 남겨보세요.")
		$("#exampleModal").modal("toggle");
	})

//버튼2를 클릭하면 = 놀이기구2 소개
	$("#Btn2").on("click", function(){
		var rides2_info = "";
		rides2_info += "<table><tr><td>";
		rides2_info += "King Kong kick the drum</td>"
		rides2_info += "<td>King Kong kick the drum</td>"
		rides2_info += "<td>King Kong kick the drum</td></tr></table>"		
		$("#exampleModalLabel").text("호잇");
		
		$("#slider-img3").attr("src","../resources/img/loopy02.jpeg");
		$("#modal-text").html(rides2_info);
		$("#exampleModal").modal("toggle");
		
	})	

	
//버튼3 누르면
	$("#Btn3").on("click", function(){
		alert("호잇")
		$("#test1").attr("src", "../resources/img/pin.png");
		$("#test2").attr("src", "/resources/img/pin.png");
	})
	
	
	
})//전체닫음