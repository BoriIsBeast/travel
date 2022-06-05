package com.project.travel.pay;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.cart.CartVO;
import com.project.travel.member.MemberVO;



@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	@Autowired
	private PayService payService;
	
	@GetMapping("detailOrder")
	public ModelAndView getOrderDetail(PayVO payVO,HttpSession session)throws Exception{
		ModelAndView mv=new ModelAndView();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		List<CartVO> ar = payService.getOrderDetail(payVO);
		
		mv.addObject("list",ar);
		mv.setViewName("pay/detailOrder");
		
		
		return mv;
	}
	
	
	@PostMapping("add")
	@ResponseBody
	public Long setAdd(PayVO payVO, @RequestParam(value="cartNum[]") Long[] cartNum)throws Exception{
		ModelAndView mv=new ModelAndView();
		
		int result = payService.setAdd(payVO,cartNum);
		
//		mv.addObject("result",result);
//		mv.setViewName("common/result");
		
		Long num=payVO.getNum();		
		return num;
	}

	@GetMapping("orderList")
	public ModelAndView orderList(PayVO payVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<PayVO> ar = payService.orderList(payVO);
		
		mv.addObject("list",ar);
		mv.setViewName("pay/orderList");
		return mv;
	}
	
	@PostMapping("delete")
	@ResponseBody
	public Long setDelete(PayVO payVO,@RequestParam(value="cartNum[]") Long[] cartNum)throws Exception{
		
		int result = payService.setDelete(payVO,cartNum);
		
		Long num1=payVO.getNum();
		
		return num1;
	}

	@GetMapping("refund")
	public ModelAndView getRefundList(CartVO cartVO) throws Exception{
		ModelAndView mv=new ModelAndView();
		
		List<CartVO> ar=payService.getRefundList(cartVO);
		
		mv.addObject("list",ar);
		mv.setViewName("pay/refund");
		return mv;
	}


	
	

}
