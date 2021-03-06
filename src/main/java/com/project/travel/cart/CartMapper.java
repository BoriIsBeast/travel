package com.project.travel.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.member.MemberVO;
import com.project.travel.util.Pager;

@Mapper
public interface CartMapper {

	public int setAdd(CartVO cartVO) throws Exception;
	
	public List<CartVO> getList(Pager pager) throws Exception;
	
	public int setUpdate(CartVO cartVO)throws Exception;
	
	public int setDelete(CartVO cartVO)throws Exception;
	
	public Long getTotal(Pager pager) throws Exception;
	
	public CartVO getCheck(CartVO cartVO)throws Exception;
	
	public CartVO getCartList(CartVO cartVO)throws Exception;
	
	public int update(CartVO cartVO) throws Exception;
	
	public CartVO getDetail(CartVO cartVO) throws Exception;
	
	public int cartCheckDelete(CartVO cartVO) throws Exception;

	
}
