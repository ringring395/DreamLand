package com.ring.mapper;

import java.util.ArrayList;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;

public interface EventMapper {
	
	//이벤트 목록 출력
	public ArrayList<EventVO> eventlist(CriteriaVO cri);
	
	//이벤트 전체 건수 DB작업
	public int eventTotal(CriteriaVO cri);

	//sale 목록 출력
	public ArrayList<EventVO> salelist(CriteriaVO cri);
	
	//sale 전체 건수 DB작업
	public int saleTotal(CriteriaVO cri);
	
	//퍼레이드 목록 출력
	public ArrayList<EventVO> paradelist(CriteriaVO cri);
	
	//퍼레이드 전체 건수 DB작업
	public int paradeTotal(CriteriaVO cri);

}
