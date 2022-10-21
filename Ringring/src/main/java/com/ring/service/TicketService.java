package com.ring.service;

import java.util.ArrayList;

import com.ring.model.EventVO;

public interface TicketService {
	
//	//선택한 티켓을 구매하기 위한 설계
//	public int order(TicketVO ticket);
	
	//select : 현재 진행중인 할인이벤트 출력
	public ArrayList<EventVO> nowsalelist(EventVO event);

}
