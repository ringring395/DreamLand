package com.ring.service;

import java.util.ArrayList;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.TicketVO;
import com.ring.model.UploadVO;
import com.ring.model.UserVO;

public interface AdminService {
	
	//이벤트 등록
	public void event(EventVO event);
	
	/*
	 *  첨부파일
	*/
//	//첨부파일 등록(insert)
//	public void uploadInsert(UploadVO up);
	
	//첨부파일 조회 설계
	public ArrayList<UploadVO> uploadList(int e_no);

		
	//고객센터 글 등록
	public void board(BoardVO board);
	
	//1:1문의 목록 설계
	public ArrayList<BoardVO> ahelplist(CriteriaVO cri);
	
	//1:1문의 목록 건수 설계
	public int ahelpTotal(CriteriaVO cri);
	
	//1:1문의 답변 등록
	public void ahelpAnswer(BoardVO board);
	
	//회원목록 조회
	public ArrayList<UserVO> userlist(CriteriaVO cri);
	
	//회원 목록 건수 설계
	public int userTotal(CriteriaVO cri);
	
	//예매상황 확인
	public ArrayList<TicketVO> ticketCnt(TicketVO ticket);

}
