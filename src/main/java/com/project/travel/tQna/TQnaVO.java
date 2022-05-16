package com.project.travel.tQna;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class TQnaVO {

	private Long num;
	private String id;
	private String title;
	private String contents;
	private Date regDate;
	private Long hit;
	private Long ref;
	private Long rec;
	private Long step;
	private Long depth;
	
	private List<TQnaFilesVO> filesVOs;
	
}
