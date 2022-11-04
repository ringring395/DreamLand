/**
 * map js 파일
 * 놀이기구 소개
 */
$(document).ready(function(){	

	var info ="";
	info +="*국가재난, 자연재해로 인해 갑작스럽게 운영이 중지 될 수 있습니다.<br>"
	info +="*강풍 발생 시 갑작스럽게 운영이 중지 될 수 있습니다.<br>";		

		
//버튼1 클릭 = 놀이기구1 소개
//rides1 = 대관람차
	$("#Btn1").on("click", function(){
		//타이틀
		$("#map_modal_title").text("대관람차🎡");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides1_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides1_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides1_3.jpg");
		//소개글
		$("#modal_text_info").text("DreamLand 전체를 조망할 수 있는 대관람차에서 잊지 못할 추억💕을 남겨보세요.")
		$("#modal_text_info2").html(info)
		//모달창
		$("#exampleModal").modal("toggle");
	})

	
//버튼2 클릭 = 놀이기구2 소개
//rides2 = 롤러코스터
	$("#Btn2").on("click", function(){
		//타이틀
		$("#map_modal_title").text("롤러코스터🎢");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides2_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides2_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides2_3.jpg");
		//소개글
		$("#modal_text_info").text("두려운 마음을 이겨내고, 짜릿한 속도감⚡을 느껴보세요. 모든 스트레스가 해소될거예요.😘")
		info +="*130cm 미만인 분은 탑승이 불가합니다."
		$("#modal_text_info2").html(info)
		//모달창
		$("#exampleModal").modal("toggle");			
	})	

	
//버튼3 클릭 = 놀이기구3 소개
//rides3 = 회전목마
	$("#Btn3").on("click", function(){
		//타이틀
		$("#map_modal_title").text("회전목마🎠");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides3_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides3_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides3_3.jpg");
		//소개글
		$("#modal_text_info").text("화려한 회전목마에서 인생샷을 남겨보세요.📸")
		info +="*100cm 미만인 분은 보호자와 함께 탑승 가능합니다."
		$("#modal_text_info2").html(info)
		//모달창
		$("#exampleModal").modal("toggle");			
	})	
	

//버튼4 클릭 = 놀이기구4 소개
//rides4 = 스카이카
	$("#Btn4").on("click", function(){
		//타이틀
		$("#map_modal_title").text("스카이카☁");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides4_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides4_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides4_3.jpg");
		//소개글
		$("#modal_text_info").text("돌아가는 스카이카에서 즐거움을 찾아보세요.😆")
		info +="*130cm 미만인 분은 탑승이 불가합니다."
		$("#modal_text_info2").html(info)
		//모달창
		$("#exampleModal").modal("toggle");			
	})	
	
	
//버튼5 클릭 = 놀이기구5 소개
//rides5 = 범퍼카
	$("#Btn5").on("click", function(){
		//타이틀
		$("#map_modal_title").text("범퍼카🚗");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/rides5_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/rides5_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/rides5_3.jpg");
		//소개글
		$("#modal_text_info").text("가족, 친구, 연인을 찾아 범퍼카를 몰아보세요.🚗🚗 신나는 추억만 가득할거예요.")
		info +="*100cm 미만인 분은 보호자와 함께 탑승하셔야 합니다."
		$("#modal_text_info2").html(info)
		//모달창
		$("#exampleModal").modal("toggle");			
	})	

	
//버튼6 클릭 = 놀이기구6 소개
//tour_train = 미니열차
	$("#Btn6").on("click", function(){
		//타이틀
		$("#map_modal_title").text("미니열차🚂");		
		//이미지 *3
		$("#slider-img1").attr("src", "../resources/img/map/tour_train_1.jpg");
		$("#slider-img2").attr("src", "../resources/img/map/tour_train_2.jpg");
		$("#slider-img3").attr("src", "../resources/img/map/tour_train_3.jpg");
		//소개글
		$("#modal_text_info").text("DreamLand를 가로지르는 미니열차🚂에 탑승해 DreamLand의 모든 곳을 방문해보세요. 숨겨진 사진 명소를 찾아 추억을 가득 기록해보세요.💖")
		info +="*100cm 미만인 분은 보호자와 함께 탑승하셔야 합니다."
		$("#modal_text_info2").html(info)
		//모달창
		$("#exampleModal").modal("toggle");			
	})	
	
	
})//전체닫음