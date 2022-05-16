package com.project.travel.Tfestival;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.travel.util.Pager;

@Service
public class TfestivalService {
	
	@Autowired
	private TfestivalMapper tfestivalMapper;
	
	//List
	public List<TfestivalVO> list(Pager pager)throws Exception{
		pager.makeRow();
//		pager.makeNum(tfestivalMapper.totalCount(pager));
		System.out.println("start : " + pager.getStartNum());
		System.out.println("perPer : " + pager.getPerPage());
		return tfestivalMapper.list(pager);
	}
	
	//detail
	public TfestivalVO detail(TfestivalVO tfestivalVO)throws Exception{
		return tfestivalMapper.detail(tfestivalVO);
	}
	
	//add
	public int add(TfestivalVO tfestivalVO)throws Exception {
		return tfestivalMapper.add(tfestivalVO);
	}
	
	//delete
	public int delete(TfestivalVO tfestivalVO)throws Exception{
		return tfestivalMapper.delete(tfestivalVO);
	}
	
	//update
	public int update(TfestivalVO tfestivalVO)throws Exception{
		return tfestivalMapper.update(tfestivalVO);
	}

}
