package com.project.travel.tReview;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.product.ProductVO;
import com.project.travel.tQna.TQnaVO;
import com.project.travel.util.Pager;

@Mapper
public interface TReviewMapper {
	
	//list
	public List<TReviewVO> getList(Pager pager) throws Exception;
	
	//list2
	public List<TReviewVO> prList(Pager pager) throws Exception;
	
	//totalCount
	public Long getTotalCount (Pager pager) throws Exception;
	
	//add
	public int setAdd(TReviewVO tReviewVO) throws Exception;
	
	//detail
	public TReviewVO getDetail(TReviewVO tReviewVO) throws Exception;
	
	//update
	public int setUpdate (TReviewVO tReviewVO) throws Exception;
	
	//delete
	public int setDelete(TReviewVO tReviewVO) throws Exception;
	
	//fileList
	public List<TReviewFilesVO> getFileList(TReviewVO tReviewVO) throws Exception;

	//fileAdd
	public int setFileAdd(TReviewFilesVO tReviewFilesVO) throws Exception;
	
	//fileDetail
	public TReviewFilesVO getFileDetail(TReviewFilesVO tReviewFilesVO) throws Exception;
	
	//fileDelete
	public int setFileDelete(TReviewFilesVO tReviewFilesVO) throws Exception;
	
	public TReviewVO productDetail(TReviewVO tReviewVO) throws Exception;
	
	//조회수 증가
	public int updateCount(String num) throws Exception;
	


}
