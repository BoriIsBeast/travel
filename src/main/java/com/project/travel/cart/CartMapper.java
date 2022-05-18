package com.project.travel.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {

	public int setAdd(CartVO cartVO) throws Exception;
	
	public List<CartVO> getList() throws Exception;
	
}
