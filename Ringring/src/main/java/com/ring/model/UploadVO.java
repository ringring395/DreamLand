package com.ring.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UploadVO {
	
	private String uploadPath;	//파일이 저장되어 있는 경로	
	private String fileName;	//업로드된 파일명			
	private String uuid;		//uuid	
	private boolean image;		//업로드된 파일이 이미지 파일인지 아닌지에 대한 정보	
	private int e_no;			//게시판 번호	
	private String i_type;		//사진 종류(이벤트종류+메인or서브)


}
