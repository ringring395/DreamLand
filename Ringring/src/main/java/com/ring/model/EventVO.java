package com.ring.model;

import java.util.ArrayList;

public class EventVO {
	
	private int e_no;			//이벤트 목록
    private String e_type;		//이벤트 종류
    private String e_title;		//이벤트 제목
    private String e_start;		//이벤트 시작일
    private String e_end;		//이벤트 종료일
    private String e_summary;	//이벤트 한줄설명
    private String e_contents;	//이벤트 설명
    private String e_upload;	//이벤트 등록날짜
    
	//AttachVO(파일 업로드 관련 Model), 배열
	private ArrayList<AttachVO> attach;
    
    
    
	public ArrayList<AttachVO> getAttach() {
		return attach;
	}
	public void setAttach(ArrayList<AttachVO> attach) {
		this.attach = attach;
	}
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	public String getE_type() {
		return e_type;
	}
	public void setE_type(String e_type) {
		this.e_type = e_type;
	}
	public String getE_title() {
		return e_title;
	}
	public void setE_title(String e_title) {
		this.e_title = e_title;
	}
	public String getE_start() {
		return e_start;
	}
	public void setE_start(String e_start) {
		this.e_start = e_start;
	}
	public String getE_end() {
		return e_end;
	}
	public void setE_end(String e_end) {
		this.e_end = e_end;
	}
	public String getE_summary() {
		return e_summary;
	}
	public void setE_summary(String e_summary) {
		this.e_summary = e_summary;
	}
	public String getE_contents() {
		return e_contents;
	}
	public void setE_contents(String e_contents) {
		this.e_contents = e_contents;
	}
	public String getE_upload() {
		return e_upload;
	}
	public void setE_upload(String e_upload) {
		this.e_upload = e_upload;
	}
	@Override
	public String toString() {
		return "EventVO [e_no=" + e_no + ", e_type=" + e_type + ", e_title=" + e_title + ", e_start=" + e_start
				+ ", e_end=" + e_end + ", e_summary=" + e_summary + ", e_contents=" + e_contents + ", e_upload="
				+ e_upload + ", attach=" + attach + "]";
	}

    
    
}
