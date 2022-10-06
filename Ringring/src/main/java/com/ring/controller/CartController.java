package com.ring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CartController {
	
	//티켓구매리스트
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String orderlist() {
		return "/Cart/orderlist";
	}
	
	//티켓예매
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking() {
		return "/Cart/booking";
	}
	
	//예매내역
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String ticket() {
		return "/Cart/ticket";
	}	

}
