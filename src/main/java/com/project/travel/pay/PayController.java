package com.project.travel.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	@Autowired
	private PayService payService;
	
	@PostMapping("add")
	public ModelAndView setAdd(PayVO payVO,Long[] cartNum)throws Exception{
		ModelAndView mv=new ModelAndView();
		
//		for(String cn:cartNum) {
//			System.out.println(cn);
//		}
		
		int result = payService.setAdd(payVO,cartNum);
		
		mv.addObject("result",result);
		mv.setViewName("common/result");
		
		return mv;
		
	}
	


	
	

}
