package com.project.travel.cart;

import java.sql.Date;
import java.util.List;

import com.project.travel.cartPay.CartPayVO;
import com.project.travel.product.ProductVO;

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
	
	private ProductVO productVOs;
	
	//주문상세
	private CartPayVO cartPayVOs;
	private ProductVO product;
	
}
