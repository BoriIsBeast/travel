package com.project.travel.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.member.MemberVO;
import com.project.travel.product.ProductMapper;
import com.project.travel.product.ProductVO;
import com.project.travel.util.Pager;

@Service
public class AdminService {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private AdminMapper adminMapper;
	
	public MemberVO getMemberDetail(MemberVO memberVO)throws Exception{
		
		return adminMapper.getMemberDetail(memberVO);
	}

	public List<ProductVO> getProductList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(productMapper.getTotal(pager));
		return adminMapper.getProductList(pager);
	}
	
	public List<MemberVO> getMemberList()throws Exception{
		
		return adminMapper.getMemberList();
	}
}
