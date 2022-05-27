package com.project.travel.Tbest;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
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
	public ModelAndView list(TbestVO tbestVO)throws Exception{
	List<TbestVO> ar = tbestService.list();
	ModelAndView mv = new ModelAndView();
	mv.addObject("list", ar);
	mv.setViewName("Tbest/list");
	return mv;
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
	
	@GetMapping("detail")
	public ModelAndView detail(TbestVO tbestVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Tbest/detail");
		tbestVO = tbestService.detail(tbestVO);
		mv.addObject("vo", tbestVO);
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView update(TbestVO tbestVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		tbestVO = tbestService.detail(tbestVO);
		mv.setViewName("Tbest/update");
		mv.addObject("vo", tbestVO);
		return mv;		
	}
	
	@PostMapping("update")
	public ModelAndView update(TbestVO tbestVO, ModelAndView mv)throws Exception{
		int result = tbestService.update(tbestVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView delete(TbestVO tbestVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tbestService.delete(tbestVO);
		mv.setViewName("redirect:./list");
		return mv;
	}

}
