package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.TicketVO;
import com.ring.model.UploadVO;
import com.ring.model.UserVO;

public interface AdminMapper {

	//관리자 ->이벤트 등록
	public void event(EventVO event);
	
	/* 첨부파일 */
	//첨부파일 등록
	public void UploadInsert(UploadVO up);
	
	//첨부파일 조회
	public ArrayList<UploadVO> UploadList(int e_no);	

	
	//관리자: 고객센터 글 등록
	public void board(BoardVO board);
	
	//1:1문의 목록 DB작업
	public ArrayList<BoardVO> ahelplist(CriteriaVO cri);
	
	//1:1문의 목록 건수 DB작업
	public int ahelpTotal(CriteriaVO cri);
	
	//1:1문의 답변 등록 DB작업
	public void ahelpAnswer(BoardVO board);
	
	//회원 목록 DB작업
	public ArrayList<UserVO> userlist(CriteriaVO cri);
	
	//회원 목록 건수 DB 작업
	public int userTotal(CriteriaVO cri);
	
	//예매상황 확인
	public ArrayList<TicketVO> ticketCnt(TicketVO ticket);

}
