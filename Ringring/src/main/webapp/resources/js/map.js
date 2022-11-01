/**
 * map js 파일
 */
$(document).ready(function(){	
	
	$('#slider_map').bxSlider();


//버튼1을 클릭하면 = 놀이기구1 소개
	$("#Btn1").on("click", function(){
		alert("호잇")
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides1_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides1_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides1_3.jpg");
		
		$("#exampleModalLabel").text("호잇ㅇㅇㅇㅇ");
		
		$("#modal-text").text("Smooth like butter Like a criminal undercover I'll melt your heart into 2")
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

	
	
	
})//전체닫음