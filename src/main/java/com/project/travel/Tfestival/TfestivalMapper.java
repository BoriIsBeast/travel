package com.project.travel.Tfestival;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.util.Pager;

@Mapper
public interface TfestivalMapper {

	// list
	public List<TfestivalVO> list(Pager pager) throws Exception;

	// totalCount
	public Long totalCount(Pager pager) throws Exception;

	// detail
	public TfestivalVO detail(TfestivalVO tfestivalVO) throws Exception;

	// add
	public int add(TfestivalVO tfestivalVO) throws Exception;

	// delete
	public int delete(TfestivalVO tfestivalVO) throws Exception;

	// update
	public int update(TfestivalVO tfestivalVO) throws Exception;

	// fileAdd
	public int fileAdd(TfestivalFilesVO tfestivalFilesVO) throws Exception;

	// fileDelete
	public int fileDelete(TfestivalFilesVO tfestivalFilesVO) throws Exception;

	// fileDetail
	public TfestivalFilesVO fileDetail(TfestivalFilesVO tfestivalFilesVO) throws Exception;

	// fileList
	public List<TfestivalFilesVO> fileList(TfestivalVO tfestivalVO) throws Exception;
}
