package com.project.travel.tQna.tQnaReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tQnaReply/*")
public class TQnaReplyController {
	
	@Autowired
	private TQnaReplyService tQnaReplyService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "tQnaReply";
	}
	@GetMapping("list")
	public ModelAndView getList(TQnaReplyVO tQnaReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("List!!");
		System.out.println(tQnaReplyVO.getNum());
		List<TQnaReplyVO> ar = tQnaReplyService.getList(tQnaReplyVO);
		
		mv.addObject("list",ar);
		mv.setViewName("common/tQnaReply");
		return mv;
	}
	
	@PostMapping("add")
	public ModelAndView setAdd(TQnaReplyVO tQnaReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(tQnaReplyVO.getContents());
		int result = tQnaReplyService.setAdd(tQnaReplyVO);
		System.out.println("ADD!!!");
		System.out.println(result);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}
	
	@PostMapping("delete")
	public ModelAndView setDelete(TQnaReplyVO tQnaReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tQnaReplyService.setDelete(tQnaReplyVO);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(TQnaReplyVO tQnaReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tQnaReplyService.setUpdate(tQnaReplyVO);
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
	}

}
