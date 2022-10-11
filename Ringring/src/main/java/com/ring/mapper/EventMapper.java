package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;

public interface EventMapper {
	
	//이벤트 목록 출력
	public ArrayList<EventVO> eventlist(CriteriaVO cri);
	
	//이벤트 전체 건수 DB작업
	public int eventTotal(CriteriaVO cri);

}
