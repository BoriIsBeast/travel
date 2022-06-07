package com.project.travel.Tbest.TbestReply;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TbestReplyMapper {

	public List<TbestReplyVO> getList(TbestReplyVO tbestReplyVO) throws Exception;

	public int setAdd(TbestReplyVO tbestReplyVO) throws Exception;

	public int setDelete(TbestReplyVO tbestReplyVO) throws Exception;

	public int setUpdate(TbestReplyVO tbestReplyVO) throws Exception;
}
