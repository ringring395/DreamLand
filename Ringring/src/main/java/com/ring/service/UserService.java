package com.ring.service;

import javax.servlet.http.HttpSession;

import com.ring.model.UserVO;

public interface UserService {
	
	//회원가입
	public void signup(UserVO user);
	
	//아이디 중복검사
	public int idcheck(String id);
	
	//로그인
	public boolean login(UserVO user, HttpSession session);

}
