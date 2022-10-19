package com.ring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TicketController {
	
	
	//티켓구매리스트
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String orderlist() {
		return "/Ticket/orderlist";
	}
	
	//티켓예매
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking() {
		return "/Ticket/booking";
	}

	
//	//티켓 구매(ticket DB에 insert작업)
//	@RequestMapping(value="/booking/order", method = RequestMethod.POST)
//	public ResponseEntity<String> order(HttpSession session, @RequestBody TicketVO ticket){
//		//로그인한 아이디로 주문
//		String id = (String)session.getAttribute("id");
//		ticket.setId(id);		
//		int result = ts.order(ticket);
//		
//		return result==1? new ResponseEntity<>("success", HttpStatus.OK)
//						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}	
//	
	
	//예매내역
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String ticket() {
		return "/Ticket/ticket";
	}	

}
