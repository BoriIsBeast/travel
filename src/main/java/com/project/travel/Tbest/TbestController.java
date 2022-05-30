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
import org.springframework.web.multipart.MultipartFile;
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
	public ModelAndView add(TbestVO tbestVO, HttpSession session, MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tbestService.add(tbestVO,files);
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
		System.out.println(tbestVO.getNum());
		System.out.println(tbestVO.getCategory());
		System.out.println(tbestVO.getTitle());
		System.out.println(tbestVO.getDetail());
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
	
	 @PostMapping("summerFileUpload")
	 public ModelAndView summerFileUpload(MultipartFile file)throws Exception{
		 ModelAndView mv = new ModelAndView();
		 String fileName = tbestService.SummerFileupload(file);
		 System.out.println(fileName);
		 mv.setViewName("common/result");
		 mv.addObject("result", fileName);
		 return mv;
	 }
	 
	 @GetMapping("summerFileDelete") 
	  public ModelAndView summerFileDelete(String fileName) throws Exception{ 
		  ModelAndView mv = new ModelAndView(); 
		  System.out.println(fileName); 
		  boolean result = tbestService.SummerFileDelete(fileName);
		  mv.setViewName("common/result"); 
		  mv.addObject("result",result); 
		  return mv; 
		  }
	 

}
