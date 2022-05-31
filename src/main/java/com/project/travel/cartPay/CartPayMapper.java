package com.project.travel.cartPay;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartPayMapper {
	
	public int setAdd(CartPayVO cartPayVO)throws Exception;
	

}
