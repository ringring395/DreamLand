package com.ring.service;

import com.ring.model.UserVO;

public interface UserService {
	
	//회원가입
	public void signup(UserVO user);
	
	//아이디 중복검사
	public int idcheck(String id);
	
	//전화번호 중복검사
	public int phonecheck(int phone);
}
