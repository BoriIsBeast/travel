package com.project.travel.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.Tbest.TbestVO;
import com.project.travel.Tfestival.TfestivalVO;
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
	
	public List<TfestivalVO> getFestivalList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(adminMapper.festivalTotalCount(pager));
		
		return adminMapper.getFestivalList(pager);
	}
	
	public List<TbestVO> getBestList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(adminMapper.bestTotalCount(pager));
		
		return adminMapper.getBestList(pager);
	}
	
	public List<CartVO> getSellList(Pager pager)throws Exception{
		
		return adminMapper.getSellList(pager);
	}
	
	public MemberVO getMemberDetail(MemberVO memberVO)throws Exception{
		
		return adminMapper.getMemberDetail(memberVO);
	}

	public List<ProductVO> getProductList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makeNum(adminMapper.productTotalCount(pager));
		return adminMapper.getProductList(pager);
	}
	
	public List<MemberVO> getMemberList()throws Exception{
		
		return adminMapper.getMemberList();
	}
}
