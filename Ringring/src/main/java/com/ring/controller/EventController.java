package com.ring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EventController {
	
	//이벤트 -> 행사 일정
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event() {
		return "/Event/event";
	}
	
	//이벤트 -> 할인 혜택
	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	public String sale() {
		return "/Event/sale";
	}
	
	//이벤트 -> 퍼레이드 일정
	@RequestMapping(value = "/parade", method = RequestMethod.GET)
	public String parade() {
		return "/Event/parade";
	}

}
