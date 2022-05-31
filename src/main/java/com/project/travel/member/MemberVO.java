package com.project.travel.member;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
@Data
public class MemberVO {
	@NotBlank(message = "반드시 입력하세요.")
	private String id;
	@Size(min = 4 ,max = 8)
	private String pw;
	@NotBlank(message = "반드시 입력하세요.")
	private String name;
	private Date regDate;
	@NotBlank(message = "반드시 입력하세요.")
	private String birth;
	@NotBlank(message = "반드시 입력하세요.")
	private String phone;
	@Email(message = "이메일형식으로 쓰세요")
	private String email;
	private Integer tPoint;
	
	private Integer tType;
	private Integer location;
	private String zipCode;
	private String address;
	
}
