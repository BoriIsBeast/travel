package com.project.travel.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.member.MemberVO;
import com.project.travel.util.Pager;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Autowired
	private CartService cartService;

	
	@PostMapping("add")
	public ModelAndView setAdd(CartVO cartVO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
			
		if(memberVO == null) {
			mv.addObject("result",2);
			mv.setViewName("common/result");
			
			return mv;
		}
		
		int result = cartService.setAdd(cartVO);
		cartVO.setId(memberVO.getId());
		
		mv.addObject("result",result);
		mv.setViewName("common/result");
		
		return mv;
		

	}
	
	@GetMapping("list")
	public ModelAndView getList(HttpSession session, Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		List<CartVO> ar = cartService.getList(pager);
		
		mv.addObject("vo",ar);
		mv.setViewName("cart/list");
		return mv;	
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setUpdate(cartVO);
		
		mv.addObject("result",result);
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@PostMapping("delete")
	public ModelAndView setDelete(CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setDelete(cartVO);
		
		mv.addObject("result",result);
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@GetMapping
	public ModelAndView getCartList(ModelAndView mv,CartVO cartVO,Long[] cartNum)throws Exception{
		//int result = payService.setAdd(payVO, cartPayVO);
		
		List<CartVO> ar= cartService.getCartList(cartVO, cartNum);
	
		mv.addObject("vo",ar);
		mv.setViewName("cart/payment");
		
		System.out.println("list는?????????"+ar);
		
		return mv;
	}
	
	
	

}
