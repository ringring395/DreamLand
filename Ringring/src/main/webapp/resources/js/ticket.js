/**
 * ticket jsp의 js 파일
 */
$(document).ready(function (){

	//캡쳐 버튼 누르면
	$("#capture").on("click", function(){		
		alert("호잇")
		screenShot($("#captureDiv"));
	
	});	
	
	
function screenShot(target){
	if(target != null && target.length >0){
		var t = target[0];
		html2canvas(t).then(function(canvas){
			var myImg = canvas.toDataURL("image/png");
			myImg = myImg.replace("data:image/png;base64,", "");
			
			$.ajax({
				type: 'post',
				data : {"imgSrc" : myImg},
				dataType : "text",
				url : contextPath + "/imgtest",
				success : function(data) {
					console.log(data);
				},
				error : function(a, b, c) {
					alert("error");
				}				
	
			});
		});
	}
}	
	
	
})//전체 닫음