package com.ring.mapper;

import com.ring.model.EventVO;

public interface AdminMapper {
	
	//관리자 ->이벤트 등록
	public void event(EventVO event);

}
