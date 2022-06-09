package com.project.travel.product;

import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class ProductVO {
	private Long productNum; 
	private String id;
	private String largeCategory;
	private String mediumCategory;
	private String smallCategory;
	@NotBlank(message = "반드시 입력하세요.")
	private String name;
	private Long price;
	@NotBlank(message = "반드시 입력하세요.")
	private String contents;
	private String address;
	@NotBlank(message = "반드시 입력하세요.")
	private String homePage;
	private Long maxCount;
	
	private List<ProductFilesVO> filesVOs;

}
