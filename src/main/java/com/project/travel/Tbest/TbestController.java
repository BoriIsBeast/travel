package com.project.travel.Tbest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.member.MemberVO;

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
	public ModelAndView add(TbestVO qbTbestVO, ModelAndView mv)throws Exception{
		mv.setViewName("Tbest/add");
		return mv;
	}
	
	@PostMapping("add")
	public ModelAndView add(TbestVO tbestVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tbestService.add(tbestVO);
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		tbestVO.setId(memberVO.getId());
		mv.setViewName("redirect:./list");
		return mv;
	}

}
