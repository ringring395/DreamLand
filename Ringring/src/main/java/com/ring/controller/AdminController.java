package com.ring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	//관리자 ->메인:예매확인
	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String admin() {
		return "/Admin/admin";
	}
	
	//관리자 -> 이벤트 등록
	@RequestMapping(value="/admin_event", method = RequestMethod.GET)
	public String admin_event() {
		return "/Admin/admin_event";
	}
	
	//관리자 ->1:1문의 리스트
	@RequestMapping(value="/admin_help_list", method = RequestMethod.GET)
	public String admin_help_list() {
		return "/Admin/admin_help_list";
	}
	
	//관리자 ->1:1문의 답변
	@RequestMapping(value="/admin_help", method = RequestMethod.GET)
	public String admin_help() {
		return "/Admin/admin_help";
	}	
}
