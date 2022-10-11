package com.ring.mapper;

import com.ring.model.BoardVO;
import com.ring.model.EventVO;

public interface AdminMapper {
	
	//관리자 ->이벤트 등록
	public void event(EventVO event);
	
	//관리자: 고객센터 글 등록
	public void board(BoardVO board);

}
