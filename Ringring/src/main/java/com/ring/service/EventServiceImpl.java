package com.ring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ring.mapper.EventMapper;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;

@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	EventMapper em;
	
	//EventService에서 설계되어진 list추상메소드
	public ArrayList<EventVO> eventlist(CriteriaVO cri) {
		return em.eventlist(cri);
	}	
	
	//이벤트 목록 전체 건수 조회
	public int eventTotal(CriteriaVO cri) {
		return em.eventTotal(cri);
	}

}
