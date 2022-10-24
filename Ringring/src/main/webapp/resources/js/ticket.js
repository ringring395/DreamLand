/**
 * ticket jsp의 js 파일
 */
$(document).ready(function (){

	//캡쳐 버튼 누르면
	$("#capture").on("click", function(){		
		alert("호잇")
		capture($("#captureDiv"));
	});	
	
	
function capture(target){
	if(target != null && target.length >0){
		var t = target[0];
		html2canvas(t).then(function(canvas){
			var myImg = canvas.toDataURL("image/png");
			myImg = myImg.replace("data:image/png;base64,", "");
			
			$.ajax({
				type: 'post',
				url: "/imgTest",
				success: function(data){
					console.log(data);
				},
				error: function(a, b, c){
					alert("error");
				}		
			});
		});
	}
}	
	
	
	
	
//// 캡쳐 라이브러리를 통해 canvas를 통해 이미지 파일로 		
//		html2canvas($("#captureDiv")). then(canvas => {
//												//다운로드될 파일 이름 지정
//			saveAs(canvas.toDataURL('image/jpg'), "aaa.jpg");
//			});
//		});
//		function saveAs(uri, filename){
//			//이미지 파일로 보냄
//			var link = document.createElement('a');
//			if(typeof link.download === 'string'){
//				link.href = uri;
//				link.download = filename;
//				doucument.body.appendChild(link);
//				link.click();
//				document.body.removeChild(link);
//			}else{
//				window.open(uri);
//			}
//		}//saveAs 닫음
		



})//전체 닫음