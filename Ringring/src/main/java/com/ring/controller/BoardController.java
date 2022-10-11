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
	public String faq() {
		return "/board/faq";
	}
	
	//1:1문의
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help() {
		return "/board/help";
	}
	
	//1:1문의: 답변
	@RequestMapping(value = "/helpdetail", method = RequestMethod.GET)
	public String helpdetail() {
		return "/board/helpdetail";
	}
	
	//1:1문의 내역
	@RequestMapping(value = "/helplist", method = RequestMethod.GET)
	public String helplist() {
		return "/board/helplist";
	}
	
	

}