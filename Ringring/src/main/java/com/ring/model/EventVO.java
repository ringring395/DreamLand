package com.ring.model;

import java.util.ArrayList;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EventVO {
	
	private int e_no;			//이벤트 목록
    private String e_type;		//이벤트 종류
    private String e_title;		//이벤트 제목
    private String e_start;		//이벤트 시작일
    private String e_end;		//이벤트 종료일
    private String e_summary;	//이벤트 한줄설명
    private String e_contents;	//이벤트 설명
    private String e_upload;	//이벤트 등록날짜
    
	//UploadVO(파일 업로드 관련 Model), 배열
	private ArrayList<UploadVO> up;
    
}
