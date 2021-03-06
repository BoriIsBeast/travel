package com.project.travel.tQna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.tNotice.TNoticeVO;
import com.project.travel.tQna.tQnaReply.TQnaReplyService;
import com.project.travel.tQna.tQnaReply.TQnaReplyVO;
import com.project.travel.util.Pager;

@Controller
@RequestMapping("/tQna/*")
public class TQnaController {
	@Autowired
	private TQnaService tQnaService;
	
	@Autowired
	private TQnaReplyService tQnaReplyService;

	@ModelAttribute("board")
	public String getBoard() {
		return "tQna";
	}
	
	@GetMapping("list")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TQnaVO> ar = tQnaService.getList(pager);
		mv.setViewName("tQna/list");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		return mv;
	}
	
	@GetMapping("add")
	public ModelAndView setAdd() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("tQna/add");
		return mv;
	}
	
	@PostMapping("add")
	public ModelAndView setAdd(TQnaVO tQnaVO, MultipartFile[] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = tQnaService.setAdd(tQnaVO, files);
		mv.setViewName("redirect:./list");
		return mv;
	}
	@GetMapping("detail")
	public ModelAndView getDetail(@RequestParam("num")String num, TQnaVO tQnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tQnaService.updateCount(num);
		tQnaVO = tQnaService.getDetail(tQnaVO);
		
		
		mv.setViewName("tQna/detail");
		
		mv.addObject("vo",tQnaVO);
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView setUpdate(TQnaVO tQnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tQnaVO = tQnaService.getDetail(tQnaVO);
		mv.setViewName("tQna/update");
		mv.addObject("vo", tQnaVO);
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(TQnaVO tQnaVO, ModelAndView mv) throws Exception{
		int result = tQnaService.setUpdate(tQnaVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@PostMapping("delete")	
	public ModelAndView setDelete(TQnaVO tQnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tQnaService.setDelete(tQnaVO);
		mv.addObject("result",result);
		mv.setViewName("common/result");
		return mv;
	}
	
	  @PostMapping("summerFileUpload") 
	  public ModelAndView setSummerFileUpload(MultipartFile file) throws Exception{ 
		  ModelAndView mv= new ModelAndView(); 
		  String fileName = tQnaService.setSummerFileUpload(file); 
		  System.out.println(fileName);
		  mv.setViewName("common/result");
		  mv.addObject("result", fileName); 
		  return mv;
	  }
	  @GetMapping("summerFileDelete") 
	  public ModelAndView setSummerFileDelete(String fileName) throws Exception{ 
		  ModelAndView mv = new ModelAndView(); 
		  System.out.println(fileName); 
		  boolean result = tQnaService.setSummerFileDelete(fileName);
		  mv.setViewName("common/result"); 
		  mv.addObject("result",result); 
		  return mv; 
		  }
	
}
