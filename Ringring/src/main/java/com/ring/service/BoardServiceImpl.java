package com.ring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ring.mapper.BoardMapper;
import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;

@Service					
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper bm;	//board테이블 mapper
	
	//공지사항 메소드
	public ArrayList<BoardVO> noticelist(CriteriaVO cri){
		return bm.noticelist(cri);
	}
	
	//공지사항 전체 건수 조회
	public int noticeTotal(CriteriaVO cri) {
		return bm.noticeTotal(cri);
	}

	//자주하는질문 메소드
	public ArrayList<BoardVO> faqlist(CriteriaVO cri){
		return bm.faqlist(cri);
	}
	
	//자주하는질문 전체 건수 조회
	public int faqTotal(CriteriaVO cri) {
		return bm.faqTotal(cri);
	}
	
	//1:1문의
	public void help(BoardVO board) {
		bm.help(board);
	}
	
	//1:1문의 목록
	public ArrayList<BoardVO> helplist(CriteriaVO cri){
		return bm.helplist(cri);
	}
	
	//1:1문의 목록 건수
	public int helpTotal(CriteriaVO cri) {
		return bm.helpTotal(cri);
	}
	
	//메인_공지사항 목록
	public ArrayList<BoardVO> mainNotice(BoardVO board){
		return bm.mainNotice(board);
	}

}