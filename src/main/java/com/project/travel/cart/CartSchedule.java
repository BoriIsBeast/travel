package com.project.travel.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class CartSchedule {
	
	@Autowired
	private CartMapper cartMapper;
	//매일 자정마다 payCheck가 2면 삭제해주기 (바로결제로 cart에 insert되고 결제 안한 것 삭제)
	@Scheduled(cron="0 0 0 * * *")
	public int cartCheckDelete() throws Exception{
		CartVO cartVO = new CartVO();
		int result = cartMapper.cartCheckDelete(cartVO);
		
		return result;
	}
	
	
}
