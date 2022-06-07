package com.project.travel.tReview.TReviewReply;

import java.sql.Date;

import lombok.Data;

@Data
public class TReviewReplyVO {
	
	private Long replyNum;
	private Long num;
	private String id;
	private String contents;
	private Date regDate;

}
