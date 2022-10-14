package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.ImgVO;

public interface ImgMapper {
	
	//첨부파일 조회
	public ArrayList<ImgVO> imgList(int i_no);
	//이미지 등록(insert)
	public void imgInsert(ImgVO img);

}
