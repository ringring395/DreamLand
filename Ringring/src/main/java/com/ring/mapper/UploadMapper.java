package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.UploadVO;

public interface UploadMapper {
	
/*
 * 첨부파일	
 */
	//첨부 파일 업로드 DB작업 설계
	public void uploadInsert(UploadVO up);
	
	//첨부파일 조회 DB작업 설계	
	public ArrayList<UploadVO> uploadList(int e_no);
}
