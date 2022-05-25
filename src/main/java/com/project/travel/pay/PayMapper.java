package com.project.travel.pay;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PayMapper {
	
	public int setAdd(PayVO payVO) throws Exception;
	



	

}
