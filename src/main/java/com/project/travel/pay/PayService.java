package com.project.travel.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.cartPay.CartPayMapper;
import com.project.travel.cartPay.CartPayVO;

@Service
public class PayService {
	
	@Autowired
	private PayMapper payMapper;
	
	@Autowired
	private CartPayMapper cartPayMapper;
	
	public int setAdd(PayVO payVO, Long[] cartNum)throws Exception{
		
		
		int result = payMapper.setAdd(payVO);
		
		for(Long cn :cartNum) {
			CartPayVO cartPayVO = new CartPayVO();
			cartPayVO.setNum(payVO.getNum());
			cartPayVO.setCartNum(cn);
			
			cartPayVO.setNum(payVO.getNum());
			result = cartPayMapper.setAdd(cartPayVO);
		}
		
	


		return result;	
	}

	
	
}
