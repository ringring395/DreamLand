package com.ring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MapController {
	
	//둘러보기 메인(지도)	
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map() {
		return "/Map/map";
	}

}
