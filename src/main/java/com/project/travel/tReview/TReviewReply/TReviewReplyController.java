package com.project.travel.tReview.TReviewReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tReviewReply/*")
public class TReviewReplyController {
	
	@Autowired
	private TReviewReplyService tReviewReplyService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "tReviewReply";
	}
	
	@GetMapping("list")
	public ModelAndView getList(TReviewReplyVO tReviewReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("===================================="+tReviewReplyVO.getNum());
		List<TReviewReplyVO> ar = tReviewReplyService.getList(tReviewReplyVO);
		mv.addObject("list",ar);
		mv.setViewName("common/tReviewReply");
		return mv;
	}
	
	@PostMapping("add")
	public ModelAndView setAdd(TReviewReplyVO tReviewReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("========================="+tReviewReplyVO.getContents());
		int result = tReviewReplyService.setAdd(tReviewReplyVO);
		System.out.println("ADD!!!!!!");
		System.out.println("=================="+result);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}

	@PostMapping("update")
	public ModelAndView setUpdate(TReviewReplyVO tReviewReplyVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tReviewReplyService.setUpdate(tReviewReplyVO);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}
	
	@PostMapping("delete")
	public ModelAndView setDelete(TReviewReplyVO tReviewReplyVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tReviewReplyService.setDelete(tReviewReplyVO);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}
	
}
