package com.project.travel.cartPay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartPayService {
	
	@Autowired
	private CartPayMapper cartPayMapper;
	
	public int setAdd(CartPayVO cartPayVO) throws Exception{

		

		return cartPayMapper.setAdd(cartPayVO);
	}
	


}
