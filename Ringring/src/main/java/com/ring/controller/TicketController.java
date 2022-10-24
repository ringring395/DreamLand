package com.ring.controller;

import java.io.FileOutputStream;
import java.util.Base64;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.PageVO;
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
	public ResponseEntity<String> selectPost(@RequestBody TicketVO ticket) {

		int result = ts.order(ticket);
		
		return result==1? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	//구매 완료 페이지
	@RequestMapping(value ="/order", method = RequestMethod.GET)
	public String order(TicketVO ticket, HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		ticket.setId(id);
		
		model.addAttribute("noworder", ts.noworder(ticket));
		
		return "/Ticket/order";
	}


	//티켓구매리스트
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String orderlist(TicketVO ticket, HttpSession session, Model model,
			CriteriaVO cri) {
		cri.setId((String)session.getAttribute("id"));
		model.addAttribute("orderlist", ts.orderlist(cri));
		
		int total = ts.orderlistTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/Ticket/orderlist";
	}	
	
	//티켓(내역 상세보기)
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String ticket(TicketVO ticket, Model model) {
		
		model.addAttribute("ticket", ts.ticket(ticket));
				
		return "/Ticket/ticket";
	}	
	
	//이메일테스트
	@RequestMapping(value = "/email", method=RequestMethod.GET)
	public String mail() {
		return "/Ticket/email";
	}
	
	//이미지 다운로드
	@ResponseBody
	@RequestMapping(value = "/imgtest/", method = RequestMethod.POST)
	public ModelMap imgTest(@RequestParam HashMap<Object, Object> param, 
			final HttpServletRequest request, 
			final HttpServletResponse response) throws Exception {

		ModelMap map = new ModelMap();
		
		String binaryData = request.getParameter("imgSrc");
		FileOutputStream stream = null;
		try{
			System.out.println("binaryfile: "  + binaryData);
			if(binaryData == null || binaryData.trim().equals("")) {
			    throw new Exception();
			}
			binaryData = binaryData.replaceAll("data:image/png;base64,", "");
//			byte[] file = Base64.decodeBase64(binaryData);
			String fileName=  UUID.randomUUID().toString();
			
			stream = new FileOutputStream("D:/01-STUDY/image/"+fileName+".png");
//			stream.write(file);
			stream.close();
			System.out.println("캡처 저장");
		    
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("에러 발생");
		}finally{
			if(stream != null) {
				stream.close();
			}
		}
		
		map.addAttribute("resultMap", "");
		return map;
	}
	}	
	
	