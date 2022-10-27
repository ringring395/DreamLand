package com.ring.mapper;

import com.ring.model.UserVO;

public interface UserMapper {
	
	//회원가입
	public void signup(UserVO user);
	
	//아이디 중복검사
	public int idcheck(String id);
	
	//로그인
	public UserVO login(UserVO user);
	
	//회원 상세보기
	public UserVO userdetail(UserVO user);
	
	//회원 정보수정
	public void usermodify(UserVO user);

}
