package com.project.travel.pay;

import java.sql.Date;


import com.project.travel.cart.CartVO;
import com.project.travel.cartPay.CartPayVO;
import com.project.travel.product.ProductVO;

import lombok.Data;

@Data
public class PayVO {

	private Long num;
	private String id;
	private Long price;
	private Date regDate;

}
