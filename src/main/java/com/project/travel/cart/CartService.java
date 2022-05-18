package com.project.travel.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	public int setAdd(CartVO cartVO) throws Exception{	
		int result = cartMapper.setAdd(cartVO);
		return result;
	}

	public List<CartVO> getList() throws Exception{
		return cartMapper.getList();
	}
}