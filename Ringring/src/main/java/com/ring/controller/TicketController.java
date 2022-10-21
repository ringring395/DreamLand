package com.ring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.EventVO;
import com.ring.model.TicketVO;
import com.ring.service.TicketService;

@Controller
public class TicketController {
	
	@Autowired
	TicketService ts;
	
	//티켓선택
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String select(EventVO event, Model model) {
		
		model.addAttribute("nowsale", ts.nowsalelist(event));

		return "/Ticket/select";
	}
	
	//티켓 선택 (insert 이뤄짐 = 구매)
	@RequestMapping(value = "/ticketOrder", method = RequestMethod.POST)
	public ResponseEntity<String> selectPost(HttpSession session, @RequestBody TicketVO ticket) {
		session.setAttribute("ordered", ticket);
		int result = ts.order(ticket);
		
		return result==1? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	//구매 완료 페이지
	@RequestMapping(value ="/order", method = RequestMethod.GET)
	public String order() {
		return "/Ticket/order";
	}

//	//티켓 구매
//	@RequestMapping(value="/order", method=RequestMethod.POST)
//	public ResponseEntity<TicketVO> orderPost(@RequestBody TicketVO ticket, HttpSession session){
//		System.out.println(ticket);
//		
//		session.setAttribute("ticket", ticket);
//		
//		ResponseEntity<TicketVO> result = null;
//		result = ResponseEntity.status(HttpStatus.OK).body(ticket);
//		
//		return result;
//	}

	//티켓구매리스트
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String orderlist() {
		return "/Ticket/orderlist";
	}	
	
	//예매내역
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String ticket() {
		return "/Ticket/ticket";
	}	

}
