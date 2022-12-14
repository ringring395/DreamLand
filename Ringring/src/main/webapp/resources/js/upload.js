/**
 * uploadAjax 파일입니다.
 */

$(document).ready(function(){

	var input = "";
	
	//내용 등록 체크
	$("#a_eventSubmitBtn").on("click",function(){
		
		/* 체크 대상*/
		var type = $("input[name=e_type]:checked").val();			//종류
		var title = $("input[name=e_title]").val();			//제목			
		var start = $("input[name=e_start]").val();			//시작일			
		var end = $("input[name=e_end]").val();				//종료일	
		var summary = $("input[name=e_summary]").val();		//한줄소개			
		var contents = $("textarea[name=e_contents]").val();	//상세내용
		
					
		/* 체크 대상 기본값*/
		var typechk = false;		//종류 체크
		var titlechk = false;		//제목 체크
		var startchk = false;		//시작일 체크
		var endchk = false;			//종료일 체크
		var summarychk = false;		//한줄소개 체크
		var contentschk = false;	//상세내용 체크	
		
		/*공란 체크 : 입력값 길이로 판단*/
		if(type != null){			//종류
			typechk = true;
		}else{
			alert("종류를 선택해주세요.");
		}
		if(title != ''){			//제목
			titlechk = true;
		}else{
			alert("제목을 입력해주세요.");
		}		
		if(start.length>0){			//시작일
			startchk = true;
		}else{
			alert("시작일을 선택해주세요.");
		}		
		if(end.length>0){			//종료일
			endchk = true;
		}else{
			alert("종료일을 선택해주세요.");
		}
		if(start > end){			//시작일과 종료일 비교
			alert("종료일이 시작일보다 빠를 수 없습니다.");
			startchk = false;
		}
		if(summary.length>0){		//한줄소개
			summarychk = true;
		}else{
			alert("한줄소개를 입력해주세요.");
		}		
		if(contents.length>0){		//상세내용
			contentschk = true;
		}else{
			alert("상세내용을 입력해주세요.");
		}
					
		if(typechk && titlechk && startchk && endchk && summarychk && contentschk){
			
			$("#form").append(input).submit();
			
		}else{
			return false;
		}	

	})//내용등록 닫음	
	
//등록하는 종류가 할인일때, 할인율 옵션박스 오픈함
	$("input[name=e_type]").on("click", function(){
		//이벤트 종류에서 체크한 값
		var radioValue = $("input[name=e_type]:checked").val();
		//sale이면
		if(radioValue == 'sale'){
			$("#a_event_salebox").show();	//할인율 옵션박스 표시
		}else{	//event나 parade면
			$("#a_event_salebox").hide();	//할인율 옵션박스 감춤
		}
		
	})
	
	
/** 1. 첨부파일 공격에 대비하기 위한 업로드 파일 확장자 제한
 * ﻿& 특정 크기 이상의 파일 업로드 제한
 */
	var reg = new RegExp("(.*?)\.(exe|zip|alz|js)$")	//확장자
	var maxSize = 5242880;	//최대 업로드 크기 5MB
	
	//						파일이름, 파일크기
	function checkExtension(fileName, fileSize){
		//파일크기 제한	
		if(fileSize > maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		//확장자 제한
		if(reg.test(fileName)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}//checkExtension 함수 선언 닫음
	

// 메인사진을 등록한 후 이벤트
	$("#main").on("change", function(){
		event.preventDefault();

		//파일 업로드 관련 로직 처리
		// .jsp의 form태그를 대체(FormData함수)
		var formData = new FormData();
		
		var inputFile = $("input[name=imgMain]");
		var files = inputFile[0].files;
		console.log(files);
		
		
		//checkExtension 함수 호출
		if(!checkExtension(files[0].name, files[0].size)){
			return false;
		}		
		// .jsp의 파일 선택을 통해 선택한 파일들을 formData에 추가
		formData.append("imgMain", files[0]);
		
		//ajax를 통해 ImgController에 파일 관련 데이터 전송
		$.ajax({
			type:"post",
			url:"/imgMain",
			data:formData,
			contentType:false,
			processData:false,
			dataType:"json",
			success:function(result){
				
				var str="";

				//filePath = 썸네일 파일 경로 + 파일명
				input+="<input type='text' name='up["+0+"].fileName' value='"+result.fileName+"'>";
				input+="<input type='text' name='up["+0+"].uuid' value='"+result.uuid+"'>";
				input+="<input type='text' name='up["+0+"].uploadPath' value='"+result.uploadPath+"'>";
				input+="<input type='text' name='up["+0+"].image' value='"+result.image+"'>";
				input+="<input type='text' name='up["+0+"].i_type' value='"+result.i_type+"'>";
				
				//만약  result.image가 true면 아래 실행
				if(result.image){
					var filePath = encodeURIComponent(result.uploadPath+"/th_"+result.uuid+"_"+result.fileName);
					console.log(filePath);
					str+="<li><img src='/display?fileName="+filePath+"'>"+result.fileName+"</li>";
				}					
				else{	//그렇지 않으면 다운로드 할 수 있도록 실행
					var filePath = encodeURIComponent(result.uploadPath+"/"+result.uuid+"_"+result.fileName);
					str+="<li><a href='/download?fileName="+filePath+"'>"+result.fileName+"</a></li>";
				}
									
				$("#imgMainResult ul").html(str);
				//$("#form").append(input).submit();
			}
		})//$.ajax닫음	
	})//main 닫음
	
// 서브사진을 등록한 후 이벤트
	$("#sub").on("change",function(){
		event.preventDefault();

		var formData = new FormData();
		
		var inputFile = $("input[name=imgSub]");
		var files = inputFile[0].files;
		console.log(files);

		for(var i=0; i<files.length; i++){	
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}	
			formData.append("imgSub", files[i]);
		}
		
		$.ajax({
			type:"post",
			url:"/imgSub",
			data:formData,
			contentType:false,
			processData:false,
			dataType:"json",
			success:function(result){
				console.log(result);
				
				var str="";
				$(result).each(function(i, obj){					
					//filePath = 썸네일 파일 경로 + 파일명
					input+="<input type='text' name='up["+(i+1)+"].fileName' value='"+obj.fileName+"'>";
					input+="<input type='text' name='up["+(i+1)+"].uuid' value='"+obj.uuid+"'>";
					input+="<input type='text' name='up["+(i+1)+"].uploadPath' value='"+obj.uploadPath+"'>";
					input+="<input type='text' name='up["+(i+1)+"].image' value='"+obj.image+"'>";
					input+="<input type='text' name='up["+(i+1)+"].i_type' value='"+obj.i_type+"'>";
					
					//만약  result.image가 true면 아래 실행
					if(obj.image){
						var filePath = encodeURIComponent(obj.uploadPath+"/th_"+obj.uuid+"_"+obj.fileName);
						console.log(filePath);
						str+="<li><img src='/display?fileName="+filePath+"'>"+obj.fileName+"</li>";
					}					
					else{	//그렇지 않으면 다운로드 할 수 있도록 실행
						var filePath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
						str+="<li><a href='/download?fileName="+filePath+"'>"+obj.fileName+"</a></li>";
					}
				
				})//향상된 for문 닫음
				
				$("#imgSubResult ul").html(str);
				//$("#form").append(input).submit();
			}
		})//$.ajax닫음	
	})//sub 닫음	
	
	
	
})