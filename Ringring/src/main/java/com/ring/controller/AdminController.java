package com.ring.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.AttachVO;
import com.ring.model.BoardVO;
import com.ring.model.CriteriaVO;
import com.ring.model.EventVO;
import com.ring.model.PageVO;
import com.ring.model.UserVO;
import com.ring.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService as;
	
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
	
	//관리자 -> 이벤트 등록 페이지(insert이루어짐)
	@RequestMapping(value = "/admin_event", method = RequestMethod.POST)
	public String eventPost(EventVO event, HttpSession session) {
//		String id = (String)session.getAttribute("id");
//		board.setId(id);
//		System.out.println("로그인된아이디 : "+id);
		System.out.println(event);

		as.event(event);
		return "redirect:/event";
	}
	
	//관리자 -> 게시물의 첨부파일의 데이터를 ajax로 전송
	@RequestMapping(value = "/attach", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<AttachVO>> uploadAjaxPost(int i_no){
		
		return new ResponseEntity<>(as.attachlist(i_no), HttpStatus.OK);
	}
	
	//관리자 ->게시판(공지사항/자주하는질문)등록
	@RequestMapping(value = "/admin_board", method = RequestMethod.GET)
	public String admin_board() {
		return "/Admin/admin_board";
	}
	
	//관리자 -> 게시판(공지사항/자주하는질문)등록(insert이루어짐)
	@RequestMapping(value = "/admin_board", method = RequestMethod.POST)
	public String boardPost(BoardVO board, HttpSession session) {
//		String id = (String)session.getAttribute("id");
//		board.setId(id);
//		System.out.println("로그인된아이디 : "+id);
		System.out.println(board);

		as.board(board);
		return "redirect:/notice";
	}
	
	//관리자 ->1:1문의 리스트
	@RequestMapping(value="/admin_helplist", method = RequestMethod.GET)
	public String admin_helplist(BoardVO board, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("helplist", as.helplist(cri));
		
		int total = as.helpTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/Admin/admin_helplist";
	}
	
	//관리자 ->1:1문의 답변
	@RequestMapping(value="/admin_help/", method = RequestMethod.GET)
	public String admin_help() {
		return "/Admin/admin_help";
	}	
	
	//관리자 -> 회원 관리
	@RequestMapping(value = "/admin_user", method = RequestMethod.GET)
	public String admin_user(UserVO user, HttpSession session, Model model,
			CriteriaVO cri) {
		
		model.addAttribute("user", as.userlist(cri));
		
		int total = as.userTotal(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		
		return "/Admin/admin_user";
	}
}
