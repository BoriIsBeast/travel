package com.project.travel.tQna.tQnaReply;

import java.sql.Date;

import lombok.Data;

@Data
public class TQnaReplyVO {
	
	private Long replyNum;
	private Long num;
	private String id;
	private String contents;
	private Date regDate;

}
