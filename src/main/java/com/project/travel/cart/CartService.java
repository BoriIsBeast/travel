package com.project.travel.cart;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.travel.member.MemberVO;
import com.project.travel.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	public int setAdd(CartVO cartVO,Long check) throws Exception{
		//장바구니 담기로 insert 할 때 중복체크
		if(check==null) {
			CartVO c = cartMapper.getCheck(cartVO);
			
			if(c!=null) {
				return 3;
			}	
		}
		//c==2 ->바로 결제로 cart 테이블에 insert paycheck2로 insert(schedule 이용해서 2인거 지우기)
		else if(check==2) {
			cartVO.setPayCheck(check);
		}
		//장바구니 담기로 insert 하고, 중복도 아닐 때 paycheck 0으로 insert
		else {
			cartVO.setPayCheck(check);
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
	
	public int cartCheckDelete(CartVO cartVO) throws Exception{
		return cartMapper.cartCheckDelete(cartVO);
	}
	
}
