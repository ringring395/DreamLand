package com.ring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.MemberVO;
import com.ring.model.UserVO;
import com.ring.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService us;
	
	//회원가입
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "/User/signup";
	}
	
	//회원가입 (insert이뤄짐)
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPost(UserVO user) {
		
		us.signup(user);
		return "redirect:/login";
	}	
	
	//아이디,비번찾기
	@RequestMapping(value="/userfind", method = RequestMethod.GET)
	public String userfind() {
		return "/User/userfind";
	}
	
	//마이페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		return "/User/mypage";
	}

	//회원정보 수정(정보 select)
	@RequestMapping(value="/usermodify", method = RequestMethod.GET)
	public String usermodify(){
		return "User/usermodify";
	}
	
	
	
	
	
	
	
	
	

	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(MemberVO member) {
		return "User/login";
	}
	
//	//로그인 서버(select)
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String loginPost(MemberVO member, HttpSession session, RedirectAttributes rttr) {
//		ms.login(member);	
//		session.setAttribute("id", member.getId());
//		rttr.addAttribute("id", member.getId());
//		return "redirect:/member/memberdetail";
//	}

}
