package com.project.travel.member;

import java.util.Date;

import lombok.Data;
@Data
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private Date regDate;
	private String birth;
	private String phone;
	private String email;
	private Integer tPoint;
	
	private Integer tType;
	private Integer location;
	private String zipCode;
	private String address;
	
}
