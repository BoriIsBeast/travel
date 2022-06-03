package com.project.travel.pay;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.cart.CartVO;

@Mapper
public interface PayMapper {
	
	public int setAdd(PayVO payVO) throws Exception;
	
	public List<PayVO> orderList(PayVO payVO) throws Exception;
	
	public List<CartVO> getOrderDetail(PayVO payVO) throws Exception;
	
	public int setDelete(PayVO payVO) throws Exception;



	

}
