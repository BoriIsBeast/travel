package com.project.travel.index;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IndexMapper {
	public Integer getCountMember() throws Exception;
	
	public Integer getCountProduct() throws Exception;
	
	public Integer getCountManager() throws Exception;
}
