package com.project.travel.tQna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.tNotice.TNoticeVO;
import com.project.travel.util.Pager;

@Mapper
public interface TQnaMapper {
	
	//list
	public List<TQnaVO> getList(Pager pager) throws Exception;
	
	//totalCount
	public Long getTotalCount (Pager pager) throws Exception;
	
	//add
	public int setAdd(TQnaVO tQnaVO) throws Exception;
	
	//detail
	public TQnaVO getDetail(TQnaVO tQnaVO) throws Exception;
	
	//update
	public int setUpdate(TQnaVO tQnaVO) throws Exception;
	
	//delete
	public int setDelete(TQnaVO tQnaVO) throws Exception;
	
	//fileList
	public List<TQnaFilesVO> getFileList(TQnaVO tQnaVO) throws Exception;
	
	//fileAdd
	public int setFileAdd(TQnaFilesVO tQnaFilesVO) throws Exception;
	
	//fillDetail
	public TQnaFilesVO getFileDetail(TQnaFilesVO tQnaFilesVO) throws Exception;
	
	//fileDelete
	public int setFileDelete(TQnaFilesVO tQnaFilesVO) throws Exception;

	//조회수
	public int updateCount(String num) throws Exception;
	
	public int reply(TQnaVO tQnaVO)throws Exception;
	
	public int stepUpdate(TQnaVO tQnaVO) throws Exception;

}
