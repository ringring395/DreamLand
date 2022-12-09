package com.ring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ring.mapper.AdminMapper;
import com.ring.mapper.UploadMapper;
import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.TicketVO;
import com.ring.model.UploadVO;
import com.ring.model.UserVO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminMapper am;
	@Autowired
	UploadMapper upm;
	
	//관리자 : 이벤트 글 등록
	public void event(EventVO event) {
		am.event(event);

		//eventVO의 getUp을 통해서 하나씩 넣음 :배열	
		event.getUp().forEach(up->{
			up.setE_no(event.getE_no());
			upm.uploadInsert(up);
		});				
	}
	
	/* 첨부파일 */
	//첨부파일 조회
	public ArrayList<UploadVO> uploadList(int e_no){
		return upm.uploadList(e_no);
	}


	
	//관리자: 고객센터 글 등록
	public void board(BoardVO board) {
		am.board(board);
	}
	
	//1:1문의 목록
	public ArrayList<BoardVO> ahelplist(CriteriaVO cri){
		return am.ahelplist(cri);
	}
	
	//1:1문의 목록 건수
	public int ahelpTotal(CriteriaVO cri) {
		return am.ahelpTotal(cri);
	}
	
	//1:1문의 답변 등록
	public void ahelpAnswer(BoardVO board) {
		am.ahelpAnswer(board);
	}
	
	//회원 목록
	public ArrayList<UserVO> userlist(CriteriaVO cri){
		return am.userlist(cri);
	}
	
	//회원 목록 건수 조회
	public int userTotal(CriteriaVO cri) {
		return am.userTotal(cri);
	}

	//예매상황 확인
	public ArrayList<TicketVO> ticketCnt(TicketVO ticket){
		return am.ticketCnt(ticket);
	}


}
