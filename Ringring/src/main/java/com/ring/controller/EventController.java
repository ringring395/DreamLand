package com.ring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.PageVO;
import com.ring.service.EventService;

@Controller
public class EventController {
	
	@Autowired
	EventService es;
	
	//이벤트 -> 행사 일정
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(EventVO event, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("event", es.eventlist(cri));
		
		int total = es.eventTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/Event/event";
	}
	
	//이벤트 -> 할인 혜택
	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	public String sale(EventVO event, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("sale", es.salelist(cri));
		
		int total = es.saleTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/Event/sale";
	}
	
	//이벤트 -> 퍼레이드 일정
	@RequestMapping(value = "/parade", method = RequestMethod.GET)
	public String parade(EventVO event, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("parade", es.paradelist(cri));
		
		int total = es.paradeTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/Event/parade";
	}

}
