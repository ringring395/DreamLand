package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.EventVO;

public interface TicketMapper {
	
//	//선택한 티켓을 구매하기 위한 DB 작업
//	public int order(TicketVO ticket);
	
	//select : 현재 진행중인 할인 이벤트 출력
	public ArrayList<EventVO> nowsalelist(EventVO event);
}
