package com.ring.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
	
	private String id;		//아이디
	private String pw;		//비밀번호
	private String name;	//이름
	private int phone;		//전화번호
	private String signup;	//가입일
	private int rownum;		//순번
	private int grp;		//권한확인
	
	//아이디 찾기
	private String findid_name;
		
}
