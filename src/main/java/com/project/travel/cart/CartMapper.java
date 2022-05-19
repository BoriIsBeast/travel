package com.project.travel.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.member.MemberVO;

@Mapper
public interface CartMapper {

	public int setAdd(CartVO cartVO) throws Exception;
	
	public List<CartVO> getList(MemberVO memberVO) throws Exception;
	
}
