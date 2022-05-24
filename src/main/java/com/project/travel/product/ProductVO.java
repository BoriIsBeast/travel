package com.project.travel.product;

import java.util.List;

import lombok.Data;

@Data
public class ProductVO {
	private Long productNum; 
	private String id;
	private String largeCategory;
	private String mediumCategory;
	private String smallCategory;
	private String name;
	private Long price;
	private String contents;
	private String address;
	private String homePage;
	private Long maxCount;
	
	private List<ProductFilesVO> filesVOs;

}
