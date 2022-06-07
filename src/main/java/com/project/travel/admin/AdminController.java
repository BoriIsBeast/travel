package com.project.travel.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.Tbest.TbestVO;
import com.project.travel.cart.CartVO;
import com.project.travel.member.MemberVO;
import com.project.travel.product.ProductVO;
import com.project.travel.util.Pager;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("sellList")
	public ModelAndView getSellList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<CartVO> ar = adminService.getSellList(pager);
		mv.addObject("list", ar);
		mv.setViewName("admin/sellList");
		
		return mv;
	}
	
	@GetMapping("adminPage")
	public ModelAndView adminPage()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/adminPage");
		
		
		return mv;
	}
	
	@GetMapping("bestList")
	public ModelAndView getBestList(HttpSession session,Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		
		memberVO=(MemberVO)session.getAttribute("member");
		
		pager.setId(memberVO.getId());
		List<TbestVO> ar = adminService.getBestList(pager);
		mv.setViewName("admin/bestList");
		mv.addObject("list", ar);
		
		return mv;
	}
	
	@GetMapping("festivalList")
	public void getfestivalList()throws Exception{
		
	}
	
	@GetMapping("memberDetail")
	public ModelAndView getmemberDetail(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO= adminService.getMemberDetail(memberVO);
		
		mv.setViewName("admin/memberDetail");
		mv.addObject("list", memberVO);
				
		
		return mv;
	}
	
	@GetMapping("productList")
	public ModelAndView getProductList(HttpSession session,Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = new MemberVO();
		
		memberVO=(MemberVO)session.getAttribute("member");
		pager.setId(memberVO.getId());
		
		List<ProductVO> ar = adminService.getProductList(pager);
				
		
		mv.setViewName("admin/productList");
		mv.addObject("vo", ar);
		
		
		 return mv;
	}
	@GetMapping("memberList")
	public ModelAndView getMemberList(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<MemberVO> ar = adminService.getMemberList();
		
		mv.setViewName("admin/memberList");
		mv.addObject("vo", ar);
		
		return mv;
	}
}
