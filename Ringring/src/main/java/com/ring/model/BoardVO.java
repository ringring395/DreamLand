package com.ring.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {
//exam DB	
	//MySQL의 board테이블	
	private int bno;			//게시판번호 bno
	private String title;		//제목 title	
	private String content;		//내용 content	
	private String regdate;		//작성일자 regdate	
	private int count;			//조회수 count
	private String id;			//id
	private int lcnt;			//좋아요 갯수
			
//dreamland DB	
	//board
	private int b_no;		//고객센터 내 글 번호
	private String b_type;	//고객센터 글종류
	private String b_title;	//고객센터 글 제목
	private String b_content;	//고객센터 글 내용
	private String b_regdate;	//고객센터 글 작성시간
	
	//1:1 help 테이블
	private int h_no;				// 1:1 내 넘버
    private String h_type;			// 1:1 종류
    private String h_title;			// 1:1 제목
    private String h_id;			// 1:1 작성자 id
    private String h_email;			// 1:1 회신 메일
    private String h_content; 		// 1:1 내용
    private String h_regdate; 		// 1:1 등록날짜
	private int h_answer;			// 1:1 답변등록 여부
	private String h_an_content;	// 1:1 답변 내용
	private String h_an_date;		// 1:1 답변등록 날짜
	
}
