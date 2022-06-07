package com.project.travel.tReview.TReviewReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
public class TReviewReplyService {
	
	@Autowired
	private TRevivewReplyMapper tRevivewReplyMapper;
	
	public List<TReviewReplyVO> getList(TReviewReplyVO tReviewReplyVO) throws Exception{
		return tRevivewReplyMapper.getList(tReviewReplyVO);
	}
	
	public int setAdd(TReviewReplyVO tReviewReplyVO)throws Exception{
		return tRevivewReplyMapper.setAdd(tReviewReplyVO);
	}
	
	public int setUpdate(TReviewReplyVO tReviewReplyVO)throws Exception{
		return tRevivewReplyMapper.setUpdate(tReviewReplyVO);
	}

	public int setDelete(TReviewReplyVO tReviewReplyVO)throws Exception{
		return tRevivewReplyMapper.setDelete(tReviewReplyVO);
	}
}
