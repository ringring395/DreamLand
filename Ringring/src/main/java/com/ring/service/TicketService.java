package com.ring.service;

import com.ring.model.TicketVO;

public interface TicketService {
	
	//선택한 티켓을 구매하기 위한 설계
	public int order(TicketVO ticket);

}
