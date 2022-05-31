package com.project.travel.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexService {
	
	@Autowired
	IndexMapper indexMapper;
	
	public Integer getCountMember()throws Exception{
		
		return indexMapper.getCountMember();
	}
	
	public Integer getCountProduct()throws Exception{
		
		return indexMapper.getCountProduct();
	}
	
	public Integer getCountManager()throws Exception{
		
		return indexMapper.getCountManager();
	}

}
