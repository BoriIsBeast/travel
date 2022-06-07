package com.project.travel.tReview.TReviewReply;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TRevivewReplyMapper {
	
	public List<TReviewReplyVO> getList(TReviewReplyVO tReviewReplyVO) throws Exception;
	
	public int setAdd(TReviewReplyVO tReviewReplyVO) throws Exception;
	
	public int setUpdate(TReviewReplyVO tReviewReplyVO)throws Exception;
	
	public int setDelete(TReviewReplyVO tReviewReplyVO) throws Exception;

}
