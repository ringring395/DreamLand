package com.ring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.BoardVO;
import com.ring.service.BoardService;

@Controller
public class HomeController {
	
	@Autowired
	BoardService bs;
	
	//메인페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(BoardVO board, Model model) {
		
		model.addAttribute("mainNotice", bs.mainNotice(board));
		
		return "/Home/main";
	}

	//오시는길
	@RequestMapping(value = "/here", method = RequestMethod.GET)
	public String here() {
		return "/Home/here";
	}
	
}
