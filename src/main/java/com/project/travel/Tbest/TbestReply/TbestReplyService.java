package com.project.travel.Tbest.TbestReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TbestReplyService {

	@Autowired
	private TbestReplyMapper tbestReplyMapper;

	public List<TbestReplyVO> getList(TbestReplyVO tbestReplyVO) throws Exception {
		return tbestReplyMapper.getList(tbestReplyVO);
	}

	public int setAdd(TbestReplyVO tbestReplyVO) throws Exception {
		return tbestReplyMapper.setAdd(tbestReplyVO);
	}

	public int setDelete(TbestReplyVO tbestReplyVO) throws Exception {
		return tbestReplyMapper.setDelete(tbestReplyVO);
	}

	public int setUpdate(TbestReplyVO tbestReplyVO) throws Exception {
		return tbestReplyMapper.setUpdate(tbestReplyVO);
	}

}
