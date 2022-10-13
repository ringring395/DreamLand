package com.ring.model;

public class UserVO {
	
	private String id;	//아이디
	private String pw;	//비밀번호
	private String name;	//이름
	private int phone;	//전화번호
	private String signup;	//가입일
	private int rownum;	//순번
	private int grp;	//권한확인
	
	
	public int getGrp() {
		return grp;
	}
	public void setGrp(int grp) {
		this.grp = grp;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getSignup() {
		return signup;
	}
	public void setSignup(String signup) {
		this.signup = signup;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", signup=" + signup
				+ ", rownum=" + rownum + ", grp=" + grp + "]";
	}

	
	
}
