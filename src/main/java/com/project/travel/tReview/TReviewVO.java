package com.project.travel.tReview;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class TReviewVO {
	
	private Long num;
	private String id;
	private Long productNum;
	private String title;
	private String contents;
	private Date regDate;
	private Long hit;
	private Long rec;
	private Long ref;
	private Long step;
	private Long depth;

	private List<TReviewFilesVO> filesVOs;
}
