package com.project.travel.pay;

import java.sql.Date;

import lombok.Data;

@Data
public class PayVO {

	private Long num;
	private String id;
	private Long price;
	private Date regDate;
	
}
