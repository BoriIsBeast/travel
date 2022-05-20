package com.project.travel.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.member.MemberVO;
import com.project.travel.util.Pager;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	public int setAdd(CartVO cartVO) throws Exception{
		return  cartMapper.setAdd(cartVO);
	}

	public List<CartVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makeNum(cartMapper.getTotal(pager));
		
		
		pager.setPerPage(5);
		
		return cartMapper.getList(pager);
	}
	
	public int setUpdate(CartVO cartVO) throws Exception{
		return cartMapper.setUpdate(cartVO);
		
	}
	
	public int setDelete(CartVO cartVO) throws Exception{
		return cartMapper.setDelete(cartVO);
	}
	
}
