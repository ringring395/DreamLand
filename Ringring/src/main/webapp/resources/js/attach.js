/**
 * 첨부파일 관련
 */

$(document).ready(function(){
	//시작되자마자(ready이벤트) e_no값 가져와야함
	var bno = $("input[name=e_no]").val();
	
	//									콜백함수
	$.getJSON("/uploadList", {e_no:e_no}, function(uploadList){
		console.log(uploadList);		
		
		var str="";
		$(uploadList).each(function(i, up){
						
			//만약 image면
			if(up.image){
				var filePath = encodeURIComponent(up.uploadPath+"/th_"+up.uuid+"_"+up.fileName)
				console.log(filePath)
				//src="/display?fileName='filePath'"
				str+="<tr><td><img src='/display?fileName="+filePath+"'>"+up.fileName+"</td><tr>"
			}else{	//image가 아니면
				var filePath = encodeURIComponent(up.uploadPath+"/"+up.uuid+"_"+up.fileName)
				str+="<tr><td><a href='/download?fileName="+filePath+"'>"+up.fileName+"</td></tr>"				
			}
						
		})
		$("#event_img table").html(str);

	})//getJSON닫음
})