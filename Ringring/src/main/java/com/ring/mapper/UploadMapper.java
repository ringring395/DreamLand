package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.UploadVO;

public interface UploadMapper {

	//이벤트 등록 파일 업로드에 해당되는 DB작업 설계
	public void uploadInsert(UploadVO up);
	
	//상세페이지의 첨부파일 조회하는 DB작업 설계	
	public ArrayList<UploadVO> uploadList(int e_no);
}
