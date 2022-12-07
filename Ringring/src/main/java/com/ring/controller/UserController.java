package com.ring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@ResponseBody
	public String loginPost(UserVO user, HttpSession session, Model model) 
	throws Exception{	
		
        boolean result = us.login(user, session);
        String msg="";
        
        if(result) {
        	session.setAttribute("id", user.getId());
        	msg = "<script>alert('login_success');location.href='../mypage'</script>";
        	
        }else {
        	msg = "<script>alert('login_fail');location.href='../login'</script>";
        	
        }
        return msg;
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

	//아이디찾기 상세
	@RequestMapping(value="/userfind_id", method=RequestMethod.POST)
	public String userfind_id(String findid_name, int findid_totalphone, 
			UserVO user, Model model){
		String name = findid_name;
		int phone = findid_totalphone;
		user.setName(name);
		user.setPhone(phone);
		UserVO findid = us.userfind_id(user);

        if( findid == null) {
        	model.addAttribute("check", 1);
        }else {
        	model.addAttribute("check", 0);
        	model.addAttribute("findid", findid);
        }
       return "User/userfind";
	}
		
	//비번찾기 상세
	@RequestMapping(value="/userfind_pw", method=RequestMethod.POST)
	public String userfind_pw(String findpw_id, String findpw_name, int findpw_totalphone,
			UserVO user, Model model) {
		String id = findpw_id;
		String name = findpw_name;
		int phone = findpw_totalphone;
		user.setId(id);
		user.setName(name);
		user.setPhone(phone);
		UserVO findpw = us.userfind_pw(user);
		
		if(findpw == null) {
			model.addAttribute("check2", 1);
		}else {
			model.addAttribute("check2", 0);
			model.addAttribute("findpw", findpw);
		}
		return "/User/userfind";
	}	
	
	//마이페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(HttpSession session, Model model) {
		//비로그인 : 로그인페이지로 연결
        if(session.getAttribute("id") == null) {
        	model.addAttribute("msg", "로그인 해주세요.");
        	model.addAttribute("url", "../login");
  	       	
        	return "/alert";
        }
       //로그인된 상태 : 바로 연결
       return "/User/mypage";
	}

	//회원정보(select)
	@RequestMapping(value="/usermodify", method = RequestMethod.GET)
	public String userdetail(UserVO user, HttpSession session, Model model){
		String id = (String)session.getAttribute("id");
		
		user.setId(id);
		us.userdetail(user);
		model.addAttribute("userdetail", us.userdetail(user));

		//비로그인 : 로그인페이지로 연결
        if(id == null) {
        	model.addAttribute("msg", "로그인 해주세요.");
        	model.addAttribute("url", "../login");
  	       	
        	return "/alert";
        }
       //로그인된 상태 : 바로 연결
       return "User/usermodify";
	}
	
	//회원 정보 수정(update)
	@RequestMapping(value="/usermodify", method = RequestMethod.POST)
	public String usermodify(UserVO user, RedirectAttributes rttr) {
		
		us.usermodify(user);
		rttr.addAttribute("id", user.getId());
		
		return "redirect:/usermodify";
	}
	
	//회원 탈퇴(페이지)
	@RequestMapping(value="/resign", method=RequestMethod.GET)
	public String resign(UserVO user, HttpSession session, Model model){
		String id = (String)session.getAttribute("id");		
		user.setId(id);
		us.userdetail(user);
		model.addAttribute("userdetail", us.userdetail(user));

		//비로그인 : 로그인페이지로 연결
        if(id == null) {
        	model.addAttribute("msg", "로그인 해주세요.");
        	model.addAttribute("url", "../login");
  	       	
        	return "/alert";
        }
       //로그인된 상태 : 바로 연결
       return "User/resign";
	}
	
	//회원 탈퇴(delete)
	@RequestMapping(value="/resign", method=RequestMethod.POST)
	public String resign(UserVO user, HttpSession session) {
		
		user.setId((String)session.getAttribute("id"));
		us.resign(user);
		
		session.invalidate();
		return "/Home/main";
	}
	


}
