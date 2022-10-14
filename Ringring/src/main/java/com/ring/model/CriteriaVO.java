package com.ring.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//pageNum(페이지번호)와 amount(한페이지당 게시물 갯수) 값을 전달하는 model
@Getter
@Setter
@ToString
public class CriteriaVO {
	
	private int pageNum;	//페이지번호
	private int amount;		//한 페이지당 게시물 갯수
	private String keyword;	//검색창에 입력한 키워드
	private String type;	//키워드의 종류
	
	//아이디
	private String id;
	
	//생성자
	public CriteriaVO() {
		this(1,10);		
	}
	public CriteriaVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	

	
}
