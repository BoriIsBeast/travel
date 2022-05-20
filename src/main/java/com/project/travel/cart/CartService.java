package com.project.travel.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.member.MemberVO;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	public int setAdd(CartVO cartVO) throws Exception{
		return  cartMapper.setAdd(cartVO);
	}

	public List<CartVO> getList(MemberVO memberVO) throws Exception{
		return cartMapper.getList(memberVO);
	}
	
	public int setUpdate(CartVO cartVO) throws Exception{
		return cartMapper.setUpdate(cartVO);
		
	}
	
	public int setDelete(CartVO cartVO) throws Exception{
		return cartMapper.setDelete(cartVO);
	}
	
}
