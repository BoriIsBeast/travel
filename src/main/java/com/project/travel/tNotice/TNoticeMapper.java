package com.project.travel.tNotice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.util.Pager;

@Mapper
public interface TNoticeMapper {

	//list : getList
	public List<TNoticeVO> getList(Pager pager)throws Exception;

	//totalCount
	public Long getTotalCount (Pager pager) throws Exception;
	
	//insert : setAdd
	public int setAdd(TNoticeVO tNoticeVO) throws Exception;
	
	//update : setUpdate
	public int setUpdate(TNoticeVO tNoticeVO) throws Exception;
	
	//detail : getDetail
	public TNoticeVO getDetail (TNoticeVO tNoticeVO) throws Exception;
	
	//delete : setDelete
	public int setDelete(TNoticeVO tNoticeVO) throws Exception;
	
	
	//list : getFileList
	public List<TNoticeFilesVO> getFileList(TNoticeVO tNoticeVO) throws Exception;
	
	//insert : setFileAdd
	public int setFileAdd(TNoticeFilesVO tNoticeFileVO) throws Exception;
	
	//detail : getFileDetail
	public TNoticeFilesVO getFileDetail(TNoticeFilesVO tNoticeFileVO) throws Exception;
	
	//delete : setFileDelete
	public int setFileDelete(TNoticeFilesVO tNoticeFileVO) throws Exception;

}
