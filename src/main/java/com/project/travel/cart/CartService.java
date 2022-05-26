package com.project.travel.cart;

import java.util.ArrayList;
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
		
		CartVO check = cartMapper.getCheck(cartVO);
		
		if(check!=null) {
			return 3;
		}
		
		return  cartMapper.setAdd(cartVO);
	}

	public List<CartVO> getList(Pager pager) throws Exception{
		CartVO cartVO =new CartVO();
		
		pager.setPerPage(5);
		pager.makeRow();
		pager.makeNum(cartMapper.getTotal(pager));
		
		
		
		return cartMapper.getList(pager);
	}
	
	public int setUpdate(CartVO cartVO) throws Exception{
		return cartMapper.setUpdate(cartVO);
		
	}
	
	public int setDelete(CartVO cartVO) throws Exception{
		return cartMapper.setDelete(cartVO);
	}
	
	public CartVO getCheck(CartVO cartVO) throws Exception{
		return cartMapper.getCheck(cartVO);
	}
	
	public List<CartVO> getCartList(CartVO cartVO, Long[] cartNum)throws Exception{
		
		List<CartVO> ar = new ArrayList<>();
		
		for(Long cn : cartNum) {
			
			cartVO.setCartNum(cn);
			CartVO cart = cartMapper.getCartList(cartVO);
			ar.add(cart);	
			
		}
		return ar;
	}
	
	public int update(CartVO cartVO)throws Exception{
		return cartMapper.update(cartVO);
	}
	public CartVO getDetail(CartVO cartVO)throws Exception{
		return cartMapper.getDetail(cartVO);
	}
	
}
