package com.project.travel.Tbest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Tbest/*")
public class TbestController {
	
	@Autowired
	private TbestService tbestService;
	
	@ModelAttribute("Tbest")
	public String getTbest() {
		return "Tbest";	
	}
	
	@GetMapping("list")
	public void list(TbestVO tbestVO)throws Exception{
	
	}
	
	@GetMapping("add")
	public void add()throws Exception{
		
	}

}
