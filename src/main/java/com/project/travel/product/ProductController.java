package com.project.travel.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.member.MemberVO;
import com.project.travel.tReview.TReviewService;
import com.project.travel.tReview.TReviewVO;
import com.project.travel.util.Pager;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private TReviewService tReviewService;

	@GetMapping("add")
	public ModelAndView setAdd(ProductVO productVO, ModelAndView mv) throws Exception {

		mv.setViewName("product/add");
		return mv;
	}

	@PostMapping("add")
	public String setAdd(ProductVO productVO, MultipartFile[] files) throws Exception {
		int result = productService.setAdd(productVO, files);
		return "redirect:./list";
	}

	@GetMapping("list")
	public ModelAndView getList(Pager pager, ModelAndView mv) throws Exception {
		List<ProductVO> ar = productService.getList(pager);

		mv.addObject("vo", ar);
		mv.setViewName("product/list");

		return mv;
	}

	@GetMapping("detail")
	public ModelAndView getDetail(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();

		productVO = productService.getDetail(productVO);
		System.out.println(productVO.getProductNum());
		mv.addObject("vo", productVO);
		mv.setViewName("product/detail");

		return mv;
	}

	@GetMapping("delete")
	public ModelAndView setDelelte(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = productService.setDelete(productVO);
		mv.setViewName("redirect:./list");

		return mv;
	}

	@GetMapping("update")
	public ModelAndView setUpdate(ProductVO productVO, ModelAndView mv) throws Exception {
		productVO = productService.getDetail(productVO);

		mv.addObject("vo", productVO);
		mv.setViewName("product/update");

		return mv;
	}

	@PostMapping("update")
	public String setUpdate(ProductVO productVO, MultipartFile[] files) throws Exception {

		int result = productService.setUpdate(productVO, files);

		return "redirect:./list";
	}

	@PostMapping("fileDelete")
	public ModelAndView setFileDelete(ProductFilesVO productFilesVO) throws Exception {
		ModelAndView mv = new ModelAndView();

		int result = productService.setFileDelete(productFilesVO);
		System.out.println(productFilesVO.getFileNum());
		mv.addObject("result", result);
		mv.setViewName("common/result");

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
		mv.setViewName("common/tReviewList2");
		return mv;
	} 
	 

}
