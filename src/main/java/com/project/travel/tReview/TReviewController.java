package com.project.travel.tReview;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.project.travel.member.MemberVO;
import com.project.travel.product.ProductVO;
import com.project.travel.tQna.TQnaVO;
import com.project.travel.util.Pager;

@Controller
@RequestMapping("/tReview/*")
public class TReviewController {

	@Autowired
	private TReviewService tReviewService;
	
	

	@ModelAttribute("tReview")
	public String getTReview() {
		return "tReview";
	}


	
	@GetMapping("list")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<TReviewVO> ar = tReviewService.getList(pager);		
		mv.setViewName("product/detail");
		mv.setViewName("tReview/list");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		return mv;
	}

	@GetMapping("list2")
	public ModelAndView prList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TReviewVO> ar= tReviewService.prList(pager);		
		mv.setViewName("product/detail");
		mv.addObject("list2",ar);
		mv.addObject("pager",pager);
		return mv;
	}

	@GetMapping("add")
	public ModelAndView setAdd(TReviewVO tReviewVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		tReviewVO = tReviewService.productDetail(tReviewVO);
		mv.setViewName("tReview/add");
		mv.addObject("vo", tReviewVO);
		return mv;
		
	}

	@PostMapping("add")
	public ModelAndView setAdd(TReviewVO tReviewVO, MultipartFile[] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = tReviewService.setAdd(tReviewVO, files);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@GetMapping("detail")
	public ModelAndView getDetail(@RequestParam("num")String num, TReviewVO tReviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tReviewService.updateCount(num);	
				
			
		tReviewVO = tReviewService.getDetail(tReviewVO);	
		
		mv.setViewName("tReview/detail");		
		mv.addObject("vo", tReviewVO);
		return mv;		
	}	
	
	@GetMapping("update")
	public ModelAndView setUpdate(TReviewVO tReviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tReviewVO = tReviewService.getDetail(tReviewVO);
		mv.setViewName("tReview/update");		
		mv.addObject("vo",tReviewVO);
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(TReviewVO tReviewVO, ModelAndView mv) throws Exception{
		int result = tReviewService.setUpdate(tReviewVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@PostMapping("delete")
	public ModelAndView setDelete(TReviewVO tReviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tReviewService.setDelete(tReviewVO);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}
	
	@PostMapping("summerFileUpload")
	public ModelAndView setSummerFileUpload(MultipartFile file) throws Exception {
		ModelAndView mv = new ModelAndView();
		String fileName = tReviewService.setSummerFileUpload(file);
		System.out.println(fileName);
		mv.setViewName("common/result");
		mv.addObject("result", fileName);
		return mv;
	}

	@GetMapping("summerFileDelete")
	public ModelAndView setSummerFileDelete(String fileName) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println(fileName);
		boolean result = tReviewService.setSummerFileDelete(fileName);
		mv.setViewName("common/result");
		mv.addObject("result", result);
		return mv;
	}
	
	@GetMapping("ajaxList")
	public ModelAndView getAjaxList(Pager pager, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO=(MemberVO)session.getAttribute("member");
		pager.setId(memberVO.getId());
		List<TReviewVO> ar = tReviewService.getList(pager);
		mv.addObject("list",ar);
		mv.addObject("pager",pager);
		mv.setViewName("common/tReviewList");
		return mv;
	} 


	
}
