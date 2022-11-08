/**
 * 이미지 랜덤으로 넣기
 */
$(document).ready(function(){	
	
/** orderlist
 * 티켓 구매내역
 */	
	
	var randomImg1 = ["../resources/img/randomImg/animal_1.png",
					"../resources/img/randomImg/animal_2.png",
	 				"../resources/img/randomImg/animal_3.png",
	 				"../resources/img/randomImg/animal_4.png",
	 				"../resources/img/randomImg/animal_5.png"];
	
	var imgNum = Math.floor(Math.random()*4)+1;
	console.log(imgNum);
	$(".orderlist_random").attr("src", randomImg1[imgNum]);
	
})//전체닫음