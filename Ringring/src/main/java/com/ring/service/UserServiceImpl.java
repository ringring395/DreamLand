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
	
	//회원상세보기
	public UserVO userdetail(UserVO user) {
		return um.userdetail(user);
	}


}
