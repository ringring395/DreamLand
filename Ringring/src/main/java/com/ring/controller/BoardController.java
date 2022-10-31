package com.ring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.PageVO;
import com.ring.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	//공지사항
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(BoardVO board, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("notice", bs.noticelist(cri));
		
		int total = bs.noticeTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/board/notice";
	}

	//자주하는질문
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(BoardVO board, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("faq", bs.faqlist(cri));
		
		int total = bs.faqTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/board/faq";
	}
	
	//1:1문의
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help(HttpSession session, Model model){
		//비로그인 : 로그인페이지로 연결
        if(session.getAttribute("id") == null) {
        	model.addAttribute("msg", "로그인 해주세요.");
        	model.addAttribute("url", "../login");
  	
        	
        	
        	return "/alert";
        }
       //로그인된 상태는 바로 1:1로 연결
       return "/board/help";	

	}	
	
	//1:1문의 (insert이루어짐)
	@RequestMapping(value = "/help", method = RequestMethod.POST)
	public String helpPost(BoardVO board, HttpSession session) {
		bs.help(board);
		return "redirect:/mypage";
	}
	
	//1:1문의: 답변
	@RequestMapping(value = "/helpdetail", method = RequestMethod.GET)
	public String helpdetail() {
		return "/board/helpdetail";
	}
	
	//1:1문의 내역
	@RequestMapping(value = "/helplist", method = RequestMethod.GET)
	public String helplist(BoardVO board, HttpSession session, Model model,
			CriteriaVO cri) {
		//세션에 저장된 아이디를 가져와서 CriteriaVO에 넣어주자
		cri.setId((String)session.getAttribute("id"));
		
		model.addAttribute("helplist", bs.helplist(cri));
		
		int total = bs.helpTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));

		return "/board/helplist";
	}
	
	

}