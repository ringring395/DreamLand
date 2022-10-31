package com.ring.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.DateVO;
import com.ring.model.EventVO;
import com.ring.model.PageVO;
import com.ring.model.TicketVO;
import com.ring.model.UploadVO;
import com.ring.model.UserVO;
import com.ring.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService as;
	
	//관리자 메인 : 예매 현황
	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String admin(Model model, HttpServletRequest request,
			DateVO date, TicketVO ticket, HttpSession session) {
		Calendar cal = Calendar.getInstance();
		DateVO calDate;

		//검색 날짜
		if(date.getDate().equals("") && date.getMonth().equals("")){
			date = new DateVO(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
		}

		Map<String, Integer> today_info =  date.today_info(date);
		List<DateVO> dateList = new ArrayList<DateVO>();
		
		//실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		//일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for(int i=1; i<today_info.get("start"); i++){
			calDate= new DateVO(null, null, null, null);
			dateList.add(calDate);
		}
		
		//날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if(i==today_info.get("today")){
				calDate= new DateVO(String.valueOf(date.getYear()), String.valueOf(date.getMonth()), String.valueOf(i), "today");
			}else{
				calDate= new DateVO(String.valueOf(date.getYear()), String.valueOf(date.getMonth()), String.valueOf(i), "normal_date");
			}
			dateList.add(calDate);
		}

		//달력 빈곳 빈 데이터로 삽입
		int index = 7-dateList.size()%7;
		
		if(dateList.size()%7!=0){			
			for (int i = 0; i < index; i++) {
				calDate= new DateVO(null, null, null, null);
				dateList.add(calDate);
			}
		}
		
		//배열에 담음
		model.addAttribute("dateList", dateList);		//날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		
		//날짜별 수량 파악
		model.addAttribute("ticketCnt", as.ticketCnt(ticket));	
		
		//세션의 아이디를 가져오기
		String id = (String)session.getAttribute("id");		
		//관리자 X : 메인페이지로 연결
        if(!id.contains("admin") || !id.contains("mail.com")) {
        	model.addAttribute("msg", "관리자만 접속 가능합니다.");
        	model.addAttribute("url", "../");
  	       	
        	return "/alert";
        }
       //관리자 : 바로 연결
       return "/Admin/admin";
	}

	
	
	
	//관리자 -> 이벤트 등록
	@GetMapping(value="/admin_event")
	public String admin_event(HttpSession session, Model model) {
		//세션의 아이디를 가져오기
		String id = (String)session.getAttribute("id");		
		//관리자 X : 메인페이지로 연결
        if(!id.contains("admin") || !id.contains("mail.com")) {
        	model.addAttribute("msg", "관리자만 접속 가능합니다.");
        	model.addAttribute("url", "../");
  	       	
        	return "/alert";
        }
       //관리자 : 바로 연결
       return "/Admin/admin_event";	
		
	}
	
	//관리자 -> 이벤트 등록 페이지(insert이루어짐)
	@RequestMapping(value = "/admin_event", method = RequestMethod.POST)
	public String eventPost(EventVO event) {

		as.event(event);
		
		return "redirect:/admin";
	}

	//해당 게시물의 첨부파일의 데이터를 ajax로 전송
	@RequestMapping(value = "/attachlist", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<UploadVO>> uploadPost(int e_no) {
		//					통신상태 정상이면 select된 결과를 uploadPost보내라.
		return new ResponseEntity<>(as.uploadList(e_no), HttpStatus.OK);
	}	
	
	//관리자 ->게시판(공지사항/자주하는질문)등록
	@RequestMapping(value = "/admin_board", method = RequestMethod.GET)
	public String admin_board(HttpSession session, Model model) {
		//세션의 아이디를 가져오기
		String id = (String)session.getAttribute("id");		
		//관리자 X : 메인페이지로 연결
        if(!id.contains("admin") || !id.contains("mail.com")) {
        	model.addAttribute("msg", "관리자만 접속 가능합니다.");
        	model.addAttribute("url", "../");
  	       	
        	return "/alert";
        }
       //관리자 : 바로 연결
       return "/Admin/admin_board";
	}
	
	//관리자 -> 게시판(공지사항/자주하는질문)등록(insert이루어짐)
	@RequestMapping(value = "/admin_board", method = RequestMethod.POST)
	public String boardPost(BoardVO board, HttpSession session) {

		System.out.println(board);

		as.board(board);
		return "redirect:/notice";
	}
	
	//관리자 ->1:1문의 리스트
	@RequestMapping(value="/admin_helplist", method = RequestMethod.GET)
	public String admin_helplist(BoardVO board, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("ahelplist", as.ahelplist(cri));
		
		int total = as.ahelpTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		//1:1문의 답변 등록
		as.ahelpAnswer(board);

		//세션의 아이디를 가져오기
		String id = (String)session.getAttribute("id");		
		//관리자 X : 메인페이지로 연결
        if(!id.contains("admin") || !id.contains("mail.com")) {
        	model.addAttribute("msg", "관리자만 접속 가능합니다.");
        	model.addAttribute("url", "../");
  	       	
        	return "/alert";
        }
       //관리자 : 바로 연결
       return "/Admin/admin_helplist";
	}
	
	//관리자 -> 회원 관리
	@RequestMapping(value = "/admin_user", method = RequestMethod.GET)
	public String admin_user(UserVO user, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("user", as.userlist(cri));
		
		int total = as.userTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));

		//세션의 아이디를 가져오기
		String id = (String)session.getAttribute("id");		
		//관리자 X : 메인페이지로 연결
        if(!id.contains("admin") || !id.contains("mail.com")) {
        	model.addAttribute("msg", "관리자만 접속 가능합니다.");
        	model.addAttribute("url", "../");
  	       	
        	return "/alert";
        }
       //관리자 : 바로 연결
       return "/Admin/admin_user";
	}
	

}
