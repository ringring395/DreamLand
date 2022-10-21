package com.ring.service;

import java.util.ArrayList;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.TicketVO;

public interface TicketService {
	
	//select : 현재 진행중인 할인이벤트 출력
	public ArrayList<EventVO> nowsalelist(EventVO event);
	
	//선택한 티켓을 구매하기 위한 설계
	public int order(TicketVO ticket);
	
	//티켓 구매내역 조회
	public ArrayList<TicketVO> orderlist(CriteriaVO cri);
	
	//티켓 구매내역 건수 설계
	public int orderlistTotal(CriteriaVO cri);
}
