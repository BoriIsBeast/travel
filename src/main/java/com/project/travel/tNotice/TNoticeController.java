package com.project.travel.tNotice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.util.Pager;

@Controller
@RequestMapping("/tNotice/*")
public class TNoticeController {

	@Autowired
	private TNoticeService tNoticeService;

	@ModelAttribute("board")
	public String getBoard() {
		return "tNotice";
	}

	@GetMapping("list")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<TNoticeVO> ar = tNoticeService.getList(pager);
		mv.setViewName("tNotice/list");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);

		return mv;
	}

	@GetMapping("add")
	public void setAdd() throws Exception {
	}

	@PostMapping("add")
	public ModelAndView setAdd(TNoticeVO tNoticeVO, MultipartFile[] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = tNoticeService.setAdd(tNoticeVO, files);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@GetMapping("detail")
	public ModelAndView getDetail(TNoticeVO tNoticeVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		tNoticeVO = tNoticeService.getDetail(tNoticeVO);
		mv.setViewName("tNotice/detail");
		tNoticeVO = tNoticeService.getDetail(tNoticeVO);
		mv.addObject("vo", tNoticeVO);
		return mv;
	}

	@GetMapping("update")
	public ModelAndView setUpdate(TNoticeVO tNoticeVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		tNoticeVO = tNoticeService.getDetail(tNoticeVO);
		mv.setViewName("tNotice/update");
		mv.addObject("vo", tNoticeVO);
		return mv;
	}

	@PostMapping("update")
	public ModelAndView setUpdate(TNoticeVO tNoticeVO, ModelAndView mv) throws Exception {
		int result = tNoticeService.setUpdate(tNoticeVO);
		mv.setViewName("redirect:./list");
		return mv;
	}

	@GetMapping("delete")
	public ModelAndView setDelete(TNoticeVO tNoticeVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = tNoticeService.setDelete(tNoticeVO);
		mv.setViewName("redirect:./list");
		return mv;
	}

	
	  @PostMapping("summerFileUpload") 
	  public ModelAndView setSummerFileUpload(MultipartFile file) throws Exception{ 
		  ModelAndView mv= new ModelAndView(); 
		  String fileName = tNoticeService.setSummerFileUpload(file); 
		  System.out.println(fileName);
		  mv.setViewName("common/result");
		  mv.addObject("result", fileName); 
		  return mv;
	  }
	  
	  @GetMapping("summerFileDelete") 
	  public ModelAndView setSummerFileDelete(String fileName) throws Exception{ 
		  ModelAndView mv = new ModelAndView(); 
		  System.out.println(fileName); 
		  boolean result = tNoticeService.setSummerFileDelete(fileName);
		  mv.setViewName("common/result"); 
		  mv.addObject("result",result); 
		  return mv; 
		  }
	
}
