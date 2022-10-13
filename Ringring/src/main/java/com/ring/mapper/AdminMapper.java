package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.UserVO;

public interface AdminMapper {
	
	//관리자 ->이벤트 등록
	public void event(EventVO event);
	
	//관리자: 고객센터 글 등록
	public void board(BoardVO board);
	
	//회원 목록 DB작업
	public ArrayList<UserVO> userlist(CriteriaVO cri);
	
	//회원 목록 건수 DB 작업
	public int userTotal(CriteriaVO cri);

}
