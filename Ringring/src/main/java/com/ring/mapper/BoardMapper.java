package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;

public interface BoardMapper {
	
	//공지사항 목록 조회 DB작업 설계
	public ArrayList<BoardVO> noticelist(CriteriaVO cri);
	
	//공지사항 전체 건수 조회 DB작업 설계
	public int noticeTotal(CriteriaVO cri);
	

}
