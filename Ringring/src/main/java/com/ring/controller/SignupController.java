package com.ring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ring.model.SignupVO;
import com.ring.service.SignupService;


@Controller
public class SignupController {
	
	@Autowired
	SignupService ss;
	
	//회원가입
	@RequestMapping(value = "/signup2", method = RequestMethod.GET)
	public String Signp2(SignupVO signup) {
		return "/signup";
	}
	
	//회원가입(insert이뤄짐)
	@RequestMapping(value = "/signup2", method = RequestMethod.POST)
	public String SignupPost2(SignupVO signup) {
		ss.Signup(signup);
		return "redirect:/";
	}
}
