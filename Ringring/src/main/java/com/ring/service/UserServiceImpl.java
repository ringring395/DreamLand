package com.ring.service;

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

}
