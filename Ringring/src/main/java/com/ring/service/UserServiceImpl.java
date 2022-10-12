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

}
