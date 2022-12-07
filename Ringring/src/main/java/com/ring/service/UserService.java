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
	
	//아이디찾기
	public UserVO userfind_id(UserVO user);
	
	//비번 찾기
	public UserVO userfind_pw(UserVO user);
	
	//회원 상세보기
	public UserVO userdetail(UserVO user);
	
	//회원 정보수정
	public void usermodify(UserVO user);
	
	//회원 탈퇴
	public void resign(UserVO user);

}
