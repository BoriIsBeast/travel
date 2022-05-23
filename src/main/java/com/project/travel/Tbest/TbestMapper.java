package com.project.travel.Tbest;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TbestMapper {
	
	//list
	public List<TbestVO> list() throws Exception;
	
	//detail
	public TbestVO detail(TbestVO tfTbestVO) throws Exception;
	
	//add
	public int add(TbestVO tbestVO) throws Exception;
	
	//delete
	public int delete(TbestVO tbestVO) throws Exception;
	
	//update
	public int update(TbestVO tbestVO) throws Exception;
	

}
