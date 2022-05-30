package com.project.travel.Tbest;

import java.util.List;

import lombok.Data;

@Data
public class TbestVO {
	
	private Long num;
	private Long productNum;
	private String id;
	private String category;
	private String title;
	private String detail;
	
	private List<TbestFilesVO> filesVOs;

}
