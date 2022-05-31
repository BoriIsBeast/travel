package com.project.travel.start;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.index.IndexService;

@Controller
public class StartController {
	
	@Autowired
	IndexService indexService;
	
	@GetMapping("/")
	public ModelAndView start()throws Exception{
		ModelAndView mv = new ModelAndView();
		Integer countMember = indexService.getCountMember();
		Integer countProduct = indexService.getCountProduct();
		Integer countManager = indexService.getCountManager();
		
		mv.setViewName("index");
		mv.addObject("countMember", countMember);
		mv.addObject("countProduct", countProduct);
		mv.addObject("countManager", countManager);
		
		return mv;
	}
}
