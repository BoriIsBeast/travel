package com.project.travel.tQna.tQnaReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
public class TQnaReplyService {
	
	@Autowired
	private TQnaReplyMapper tQnaReplyMapper;
	
	public List<TQnaReplyVO> getList(TQnaReplyVO tQnaReplyVO) throws Exception{
		return tQnaReplyMapper.getList(tQnaReplyVO);
	}

	public int setAdd(TQnaReplyVO tQnaReplyVO)throws Exception{
		return tQnaReplyMapper.setAdd(tQnaReplyVO);
		
	}
	
	public int setDelete(TQnaReplyVO tQnaReplyVO) throws Exception{
		return tQnaReplyMapper.setDelete(tQnaReplyVO);			
		
	}
	
	public int setUpdate(TQnaReplyVO tQnaReplyVO)throws Exception{
		return tQnaReplyMapper.setUpdate(tQnaReplyVO);
	}
	
}
