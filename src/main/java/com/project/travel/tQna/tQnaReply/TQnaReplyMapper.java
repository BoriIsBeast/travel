package com.project.travel.tQna.tQnaReply;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TQnaReplyMapper {
	
	public List<TQnaReplyVO> getList(TQnaReplyVO tQnaReplyVO) throws Exception;
	
	public int setAdd(TQnaReplyVO tQnaReplyVO) throws Exception;
	
	public int setDelete(TQnaReplyVO tQnaReplyVO) throws Exception;
	
	public int setUpdate(TQnaReplyVO tQnaReplyVO) throws Exception;
	
	

}
