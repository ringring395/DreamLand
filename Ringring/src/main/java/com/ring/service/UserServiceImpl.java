package com.ring.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ring.mapper.UserMapper;
import com.ring.model.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper um;
	
	//회원가입
	public void signup(UserVO user) {
		um.signup(user);		
	}
	
	//아이디 중복검사
	public int idcheck(String id) {
		return um.idcheck(id);
	}
	
	//로그인
	public boolean login(UserVO user, HttpSession session) {
		UserVO login = um.login(user);
		boolean result = false;
		if(login != null) {
			session.setAttribute("login", login);
			result = true;
		}
		return result;
	}
	
	//아이디 찾기
	public UserVO userfind_id(UserVO user) {
		return um.userfind_id(user);
	}
	
	//비번찾기
	public UserVO userfind_pw(UserVO user) {
		return um.userfind_pw(user);
	}
	
	//회원상세보기
	public UserVO userdetail(UserVO user) {
		return um.userdetail(user);
	}
	
	//회원 정보수정
	public void usermodify(UserVO user) {
		um.usermodify(user);
	}
	
	//회원 탈퇴
	public void resign(UserVO user) {
		um.resign(user);
	}


}
