package com.project.travel.pay;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.cart.CartMapper;
import com.project.travel.cart.CartVO;
import com.project.travel.cartPay.CartPayMapper;
import com.project.travel.cartPay.CartPayVO;
import com.project.travel.member.MemberVO;
import com.project.travel.product.ProductMapper;
import com.project.travel.product.ProductVO;

@Service
public class PayService {
	
	@Autowired
	private PayMapper payMapper;
	
	@Autowired
	private CartPayMapper cartPayMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	@Autowired
	private ProductMapper productMapper;
	
	public int  setAdd(PayVO payVO, Long[] cartNum)throws Exception{
		//결제테이블 insert
		int result =payMapper.setAdd(payVO);
		
		for(Long cn :cartNum) {
			//결제참조테이블 insert
			CartPayVO cartPay = new CartPayVO();
			cartPay.setCartNum(cn);
			cartPay.setNum(payVO.getNum());
			
			result=cartPayMapper.setAdd(cartPay);
			
			//cart테이블 payCheck 1로 바꿔 줌
			CartVO cartVO = new CartVO();
			cartVO.setCartNum(cn);
			
			result = cartMapper.update(cartVO);
				
			//product테이블 maxCount 조정
			result=productMapper.setMaxCountUpdate(cartVO);			
		}
		return result;	
	}
	
	public List<PayVO> orderList(PayVO payVO) throws Exception{
		
		return payMapper.orderList(payVO);
	}

	public List<CartVO> getOrderDetail(PayVO payVO) throws Exception{
		return payMapper.getOrderDetail(payVO);
	}
	
	
}
