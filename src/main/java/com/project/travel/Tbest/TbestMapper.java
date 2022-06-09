package com.project.travel.Tbest;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.util.Pager;

@Mapper
public interface TbestMapper {

	// list
	public List<TbestVO> list(Pager pager) throws Exception;

	// totalCount
	public Long totalCount(Pager pager) throws Exception;

	// detail
	public TbestVO detail(TbestVO tfTbestVO) throws Exception;

	// add
	public int add(TbestVO tbestVO) throws Exception;

	// delete
	public int delete(TbestVO tbestVO) throws Exception;

	// update
	public int update(TbestVO tbestVO) throws Exception;

	//-----------------------------------------------------------------------
	
	// fileList
	public List<TbestFilesVO> fileList(TbestVO tbestVO) throws Exception;

	// fileDelete
	public int fileDelete(TbestFilesVO tbestFilesVO) throws Exception;

	// fileDetail
	public TbestFilesVO fileDetail(TbestFilesVO tbestFilesVO) throws Exception;

	// fileAdd
	public int fileAdd(TbestFilesVO tbestFilesVO) throws Exception;
}
