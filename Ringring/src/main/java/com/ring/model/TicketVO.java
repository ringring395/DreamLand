package com.ring.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TicketVO {
	
	private int t_no;		//티켓 DB (누적)번호
	private String id;		//아이디
	private String t_date;	//선택한 예매일
	private String t_day;	//선택한 예매요일
	private String t_time;	//선택한 예매시간(종일 or 야간)
	private int t_a_price;	//어른 가격(선택한 요일+시간 기본가격)
	private int t_j_price;	//청소년 가격
	private int t_c_price;	//어린이 가격
	private int t_a_cnt;	//어른 수량
	private int t_j_cnt;	//청소년 수량
	private int t_c_cnt;	//어린이 수량
	private int t_total;	//선택한 티켓 총 가격
	private String t_regdate;	//결제한 시각
	private int t_discount;	//할인
	private int t_final;	//할인적용한 최종금액
	
	
	//event 폴더의 할인행사 조회
	private String e_title;	//할인 제목
	private int e_discount;	//할인율

}
