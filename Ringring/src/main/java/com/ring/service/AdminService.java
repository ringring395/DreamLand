package com.ring.service;

import java.util.ArrayList;

import com.ring.model.AttachVO;
import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.UserVO;

public interface AdminService {
	
	//이벤트 등록
	public void event(EventVO board);
	
	//첨부파일 조회
	public ArrayList<AttachVO> attachlist(int i_no);
	
	//고객센터 글 등록
	public void board(BoardVO board);
	
	//회원목록 조회
	public ArrayList<UserVO> userlist(CriteriaVO cri);
	
	//회원 목록 건수 설계
	public int userTotal(CriteriaVO cri);
}
