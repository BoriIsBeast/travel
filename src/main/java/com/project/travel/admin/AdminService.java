package com.project.travel.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.Tbest.TbestVO;
import com.project.travel.cart.CartVO;
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
	
	public List<TbestVO> getBestList(Pager pager)throws Exception{
		
		
		return adminMapper.getBestList(pager);
	}
	
	public List<CartVO> getSellList(Pager pager)throws Exception{
		
		return adminMapper.getSellList(pager);
	}
	
//	public MemberVO getMemberDetail(MemberVO memberVO)throws Exception{
//		
//		return adminMapper.getMemberDetail(memberVO);
//	}

	public List<ProductVO> getProductList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(productMapper.getTotal(pager));
		return adminMapper.getProductList(pager);
	}
	
	public List<MemberVO> getMemberList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(adminMapper.getMemberCount());
		return adminMapper.getMemberList(pager);
	}
	public Long getProductCount(MemberVO memberVO) throws Exception{
		return adminMapper.getProductCount(memberVO);
	}
	
	public Long getMemberCount() throws Exception{
		return adminMapper.getMemberCount();
	}
}
