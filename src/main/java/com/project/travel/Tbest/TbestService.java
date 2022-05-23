package com.project.travel.Tbest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TbestService {
	
	@Autowired
	private TbestMapper tbestMapper;
	
	//list
	public List<TbestVO> list()throws Exception{
		return tbestMapper.list();
	}
	
	//detail
	public TbestVO detail(TbestVO tbestVO)throws Exception{
		return tbestMapper.detail(tbestVO);
	}
	
	//add
	public int add(TbestVO tbestVO)throws Exception{
		return tbestMapper.add(tbestVO);
	}
	
	//delete
	public int delete(TbestVO tbestVO) throws Exception{
		return tbestMapper.delete(tbestVO);
	}
	
	//update
	public int update(TbestVO tbestVO) throws Exception{
		return tbestMapper.update(tbestVO);
	}

}
