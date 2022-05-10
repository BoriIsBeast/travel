package com.project.travel.tNotice;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class TNoticeVO {
	private Long num;
	private String id;
	private String title;
	private Date regDate;
	private String contents;
	
	private List<TNoticeFileVO> filesVOs;
}
