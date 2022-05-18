package com.project.travel.cart;

import java.sql.Date;

import lombok.Data;

@Data
public class CartVO {
	
	private Long cartNum;
	private String id;
	private Long productNum;
	private Long amount;
	private Long payCheck;
	private Date regDate;
	private Long total;

}
