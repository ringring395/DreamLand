package com.ring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ring.mapper.TicketMapper;
import com.ring.model.EventVO;

@Service
public class TicketServiceImpl implements TicketService{
	
	@Autowired
	TicketMapper tm;
	
	//select : 현재 진행하는 할인이벤트 출력
	public ArrayList<EventVO> nowsalelist(EventVO event){
		return tm.nowsalelist(event);
	}

}
