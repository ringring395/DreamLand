package com.ring.service;

import java.util.ArrayList;

import com.ring.model.AttachVO;
import com.ring.model.BoardVO;
import com.ring.model.EventVO;

public interface AdminService {
	
	//이벤트 등록
	public void event(EventVO board);
	
	//첨부파일 조회
	public ArrayList<AttachVO> attachlist(int i_no);
	
	//고객센터 글 등록
	public void board(BoardVO board);
}
