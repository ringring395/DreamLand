package com.ring.service;

import com.ring.model.UserVO;

public interface UserService {
	
	//회원가입
	public void signup(UserVO user);
	
	//아이디 중복검사
	public int idcheck(String id);
	
	//로그인
	public void login(UserVO user);

}
