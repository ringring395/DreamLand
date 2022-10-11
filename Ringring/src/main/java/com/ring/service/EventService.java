package com.ring.service;

import java.util.ArrayList;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;

public interface EventService {
	
	//이벤트 목록 조회
	public ArrayList<EventVO> eventlist(CriteriaVO cri);
	
	//이벤트 건수 설계
	public int eventTotal(CriteriaVO cri);

}
