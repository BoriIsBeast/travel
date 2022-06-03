package com.project.travel.Tbest.TbestReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/TbestReply/*")
public class TbestReplyController {
	
	@Autowired
	private TbestReplyService tbestReplyService;
	
	@ModelAttribute("TbestReply")
	public String getTbestReply() {
		return "TbestReply";
	}
	
	@GetMapping("list")
	public ModelAndView getList(TbestReplyVO tbestReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("List!");
		System.out.println(tbestReplyVO.getNum());
		List<TbestReplyVO> ar = tbestReplyService.getList(tbestReplyVO);
		mv.addObject("list", ar);
		mv.setViewName("common/TbestReply");
		return mv;
	}

}
