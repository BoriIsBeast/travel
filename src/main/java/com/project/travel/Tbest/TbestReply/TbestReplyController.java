package com.project.travel.Tbest.TbestReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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

	//댓글 리스트
	@GetMapping("list")
	public ModelAndView getList(TbestReplyVO tbestReplyVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("List!");
		System.out.println(tbestReplyVO.getNum());
		List<TbestReplyVO> ar = tbestReplyService.getList(tbestReplyVO);
		mv.addObject("list", ar);
		mv.setViewName("common/TbestReply");
		return mv;
	}
	
	//댓글 추가
	@PostMapping("add")
	public ModelAndView setAdd(TbestReplyVO tbestReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(tbestReplyVO.getContents());
		int result = tbestReplyService.setAdd(tbestReplyVO);
		System.out.println("add!");
		System.out.println(result);
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
	}
	
	//댓글 삭제
	@PostMapping("delete")
	public ModelAndView setDelete(TbestReplyVO tbestReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tbestReplyService.setDelete(tbestReplyVO);
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
	}
	
	//댓글 수정
	public ModelAndView setUpdate(TbestReplyVO tbestReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tbestReplyService.setUpdate(tbestReplyVO);
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
	}

}
