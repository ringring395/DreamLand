package com.ring.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageVO {
	
	private int startPage;	//시작번호	
	private int endPage;	//끝번호	
	private boolean prev;	//이전버튼 (true일때는 보여주고, false일때는 보여주지마!)	
	private boolean next;	//다음버튼	
	private CriteriaVO cri;	//CriteriaVO 포함	
	private int total;		//board테이블의 전체 건수를 저장
	
	
	//정렬 위한 변수 추가
	private String sort;	//정렬
	
	
	//생성자(매개변수가 2개인 생성자) 선언
	public PageVO(CriteriaVO cri, int total) {
		this.cri = cri;
		this.total = total;
		
		//시작번호, 끝번호, 이전버튼, 다음버튼 계산
		//끝번호 식 : 현재 페이지 / 10(올림) *10
		//올림처리할 소수점 나오도록 10.0으로 나눠준다.
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		
		//시작번호 식 : 끝번호-9
		this.startPage = this.endPage-9;

		//제일 마지막 페이지 번호는 전체 건수를 고려해줘야 한다.
		//제일 마지막 끝번호 식 : 전체 건수(올림)/페이지 당 게시물 갯수(amount)
		//							126*1.0 = 126.0 / 10
		//									  12.6(올림) => 13
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));

		// 13(realEnd) < 20(endPage) 면
		//realEnd가 적용되게 함
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		//startPage가 1보다 크면 이전버튼 활성화
		this.prev = this.startPage > 1;
		
		//endPage가 realEnd보다 작으면
		this.next = this.endPage < realEnd;
		
	}


	
}
