package com.ring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	//아이디 중복 검사(select 이뤄짐)
	@RequestMapping(value = "/idcheck", method = RequestMethod.GET)
	@ResponseBody
	public int idcheck(String id) {
		
		int result = us.idcheck(id);
		return result;
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(UserVO user) {
		return "User/login";
	}
	
	//로그인(select 진행)
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(UserVO user, HttpSession session, RedirectAttributes rttr) {
		
		us.login(user);
		session.setAttribute("id", user.getId());
		rttr.addAttribute("id", user.getId());

		return "/Home/main";
	}
	
	//로그아웃
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		rttr.addAttribute("logout");

		return "/Home/main";
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
	
	
	
	
	
	
	
	
	


	


}
