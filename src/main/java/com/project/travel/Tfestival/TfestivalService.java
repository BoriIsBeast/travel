package com.project.travel.Tfestival;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.travel.util.FileManager;
import com.project.travel.util.Pager;

@Service
public class TfestivalService {
	
	@Autowired
	private TfestivalMapper tfestivalMapper;
	
	@Autowired
	private FileManager fileManager;
	
	//List
	public List<TfestivalVO> list(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(tfestivalMapper.totalCount(pager));
		System.out.println("start : " + pager.getStartNum());
		System.out.println("perPer : " + pager.getPerPage());
		return tfestivalMapper.list(pager);
	}
	
	//detail
	public TfestivalVO detail(TfestivalVO tfestivalVO)throws Exception{
		return tfestivalMapper.detail(tfestivalVO);
	}
	
	//add
	public int add(TfestivalVO tfestivalVO, MultipartFile[] files)throws Exception {
		
		// 1. File을 HDD에 저장
		String fileName = fileManager.fileSave(files[0], "resources/upload/festival");
		System.out.println(fileName);
		// 2. 저장된 정보를 DB에 저장
		
		
		return 0;//tfestivalMapper.add(tfestivalVO);
	}
	
	//delete
	public int delete(TfestivalVO tfestivalVO)throws Exception{
		return tfestivalMapper.delete(tfestivalVO);
	}
	
	//update
	public int update(TfestivalVO tfestivalVO)throws Exception{
		return tfestivalMapper.update(tfestivalVO);
	}
	
	//fileDetail
	public TfestivalFilesVO fileDetail(TfestivalFilesVO tfestivalFilesVO)throws Exception{
		return tfestivalMapper.fileDetail(tfestivalFilesVO);
	}

}
