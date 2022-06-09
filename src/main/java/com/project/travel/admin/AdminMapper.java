package com.project.travel.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.travel.Tbest.TbestVO;
import com.project.travel.Tfestival.TfestivalVO;
import com.project.travel.cart.CartVO;
import com.project.travel.member.MemberVO;
import com.project.travel.product.ProductVO;
import com.project.travel.util.Pager;

@Mapper
public interface AdminMapper {
	
		
	
	public List<TfestivalVO> getFestivalList(Pager pager) throws Exception;
	
	public Long productTotalCount(Pager pager)throws Exception;
	
	public Long festivalTotalCount(Pager pager) throws Exception;
	public Long bestTotalCount(Pager pager) throws Exception;
	
	public List<TbestVO> getBestList(Pager pager) throws Exception;
	
	public List<CartVO> getSellList(Pager pager)throws Exception;
	
	//public MemberVO getMemberDetail(MemberVO memberVO)throws Exception;
	
	public List<ProductVO> getProductList(Pager pager) throws Exception;
	
	public List<MemberVO> getMemberList(Pager pager) throws Exception;
	
	public Long getProductCount(MemberVO memberVO) throws Exception;
	
	public Long getMemberCount() throws Exception;

}
