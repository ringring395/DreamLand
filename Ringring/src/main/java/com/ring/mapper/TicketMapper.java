package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.TicketVO;

public interface TicketMapper {
	
	//select : 현재 진행중인 할인 이벤트 출력
	public ArrayList<EventVO> nowsalelist(EventVO event);
	
	//선택한 티켓을 구매하기 위한 DB 작업
	public int order(TicketVO ticket);
	
	//구매완료 확인 위한 DB 작업
	public TicketVO noworder(TicketVO ticket);
	
	//티켓 구매내역을 조회하는 DB작업
	public ArrayList<TicketVO> orderlist(CriteriaVO cri);
	
	//티켓 구매내역 건수를 조회하는 DB작업
	public int orderlistTotal(CriteriaVO cri);
	
	//티켓(내용 상세보기) 조회하는 DB작업
	public TicketVO ticket(TicketVO ticket);
}
