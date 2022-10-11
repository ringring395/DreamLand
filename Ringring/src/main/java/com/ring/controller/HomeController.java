package com.ring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	//메인페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		
		return "/Home/main";
	}

	//오시는길
	@RequestMapping(value = "/here", method = RequestMethod.GET)
	public String here() {
		return "/Home/here";
	}
	
}