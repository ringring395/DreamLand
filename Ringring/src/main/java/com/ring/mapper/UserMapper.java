package com.ring.mapper;

import com.ring.model.UserVO;

public interface UserMapper {
	
	//회원가입
	public void signup(UserVO user);
	
	//아이디 중복검사
	public int idcheck(String id);

}
