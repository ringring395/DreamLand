package com.ring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ring.mapper.AdminMapper;
import com.ring.mapper.AttachMapper;
import com.ring.model.AttachVO;
import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.UserVO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminMapper am;
	@Autowired
	AttachMapper attm;
	
	//관리자 : 이벤트 글 등록
	public void event(EventVO event) {
		am.event(event);
		
//		event.getAttach().forEach(attach->{
//			attach.setI_no(event.getE_no());
//			attm.insert(attach);
//		});
	}
	
	public ArrayList<AttachVO> attachlist (int i_no){
		return attm.attachlist(i_no);
	}
	
	//관리자: 고객센터 글 등록
	public void board(BoardVO board) {
		am.board(board);
	}
	
	//1:1문의 목록
	public ArrayList<BoardVO> helplist(CriteriaVO cri){
		return am.helplist(cri);
	}
	
	//1:1문의 목록 건수
	public int helpTotal(CriteriaVO cri) {
		return am.helpTotal(cri);
	}
	
	//회원 목록
	public ArrayList<UserVO> userlist(CriteriaVO cri){
		return am.userlist(cri);
	}
	
	//회원 목록 건수 조회
	public int userTotal(CriteriaVO cri) {
		return am.userTotal(cri);
	}

}
