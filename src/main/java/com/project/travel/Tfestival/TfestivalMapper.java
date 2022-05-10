package com.project.travel.Tfestival;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TfestivalMapper {
	
	//list
	public List<TfestivalVO> list() throws Exception;
	
	//detail
	public TfestivalVO detail() throws Exception;
	
	//add
	public int add() throws Exception;
	
	//delete
	public int delete() throws Exception;
	
	//update
	public int update() throws Exception;

}
