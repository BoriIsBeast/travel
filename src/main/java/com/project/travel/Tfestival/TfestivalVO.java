package com.project.travel.Tfestival;

import java.sql.Date;

import lombok.Data;

@Data
public class TfestivalVO {
	
	private Long num;
	private String name;
	private Date startDate;
	private Date finishDate;
	private String location;
	private String detail;

}
