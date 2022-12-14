package com.ring.service;

import java.util.ArrayList;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;

public interface BoardService {
	
	//공지사항 목록 조회
	public ArrayList<BoardVO> noticelist(CriteriaVO cri);
	
	//공지사항 건수 설계
	public int noticeTotal(CriteriaVO cri);
	
	//자주하는질문 목록 조회
	public ArrayList<BoardVO> faqlist(CriteriaVO cri);
	
	//자주하는질문 건수 설계
	public int faqTotal(CriteriaVO cri);	
	
	//1:1 문의
	public void help(BoardVO board);
	
	//1:1문의 목록 설계
	public ArrayList<BoardVO> helplist(CriteriaVO cri);
	
	//1:1문의 목록 건수 설계
	public int helpTotal(CriteriaVO cri);
	
	//메인_공지사항 목록 설계
	public ArrayList<BoardVO> mainNotice(BoardVO board);
	
}