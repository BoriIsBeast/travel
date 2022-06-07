package com.project.travel.Tfestival;

import java.util.List;

import lombok.Data;

@Data
public class TfestivalVO {

	private Long num;
	private String name;
	private String startDate;
	private String finishDate;
	private String location;
	private String detail;
	private String homePage;
	private String age;
	private String phone;
	private String id;

	private List<TfestivalVO> filesVOs;

}
