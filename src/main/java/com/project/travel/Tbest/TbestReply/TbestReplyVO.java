package com.project.travel.Tbest.TbestReply;

import java.sql.Date;

import lombok.Data;

@Data
public class TbestReplyVO {
	
	private Long replyNum;
	private Long num;
	private String id;
	private String contents;
	private Date regDate;

}
