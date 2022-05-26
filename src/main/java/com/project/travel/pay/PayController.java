package com.project.travel.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	@Autowired
	private PayService payService;
	
	@PostMapping("add")
	public ModelAndView setAdd(PayVO payVO, @RequestParam(value="cartNum[]") Long[] cartNum)throws Exception{
		ModelAndView mv=new ModelAndView();
		
		int result = payService.setAdd(payVO,cartNum);
		
		mv.addObject("result",result);
		mv.setViewName("common/result");
		
		return mv;
		
	}
	


	
	

}
