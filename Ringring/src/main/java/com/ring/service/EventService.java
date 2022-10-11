package com.ring.service;

import java.util.ArrayList;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;

public interface EventService {
	
	//이벤트 목록 조회
	public ArrayList<EventVO> eventlist(CriteriaVO cri);
	
	//이벤트 건수 설계
	public int eventTotal(CriteriaVO cri);
	
	//sale 목록 조회
	public ArrayList<EventVO> salelist(CriteriaVO cri);
	
	//sale 건수 설계
	public int saleTotal(CriteriaVO cri);
	
	//퍼레이드 목록 조회
	public ArrayList<EventVO> paradelist(CriteriaVO cri);
	
	//퍼레이드 건수 설계
	public int paradeTotal(CriteriaVO cri);

}
