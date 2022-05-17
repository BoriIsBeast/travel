package com.project.travel.Tfestival;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.util.FileManager;
import com.project.travel.util.Pager;

@Controller
@RequestMapping("/Tfestival/*")
public class TfestivalController {
	
	@Autowired
	private TfestivalService tfestivalService;
	
	@Autowired
	private FileManager fileManager;
	
	@ModelAttribute("Tfestival")
	public String getTfestival() {
		return "Tfestival";
	}
	
	@GetMapping("list")
	public ModelAndView list(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		java.util.List<TfestivalVO> ar = tfestivalService.list(pager);
		mv.setViewName("Tfestival/list");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView detail(TfestivalVO tfestivalVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Tfestival/detail");
		tfestivalVO = tfestivalService.detail(tfestivalVO);
		mv.addObject("vo", tfestivalVO);
		return mv;
	}
	
	@GetMapping("add")
	public void add()throws Exception{
	}
	
	@PostMapping("add")
	public ModelAndView add(TfestivalVO tfestivalVO, MultipartFile[] files)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		for(MultipartFile f : files) {
			System.out.println(f.getOriginalFilename());
		}
		
		// int result = tfestivalService.add(tfestivalVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView delete (TfestivalVO tfestivalVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tfestivalService.delete(tfestivalVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView update(TfestivalVO tfestivalVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		tfestivalVO = tfestivalService.detail(tfestivalVO);
		mv.setViewName("Tfestival/update");
		mv.addObject("vo", tfestivalVO);
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView update (TfestivalVO tfestivalVO, ModelAndView mv)throws Exception{
		System.out.println(tfestivalVO.getNum());
		int result = tfestivalService.update(tfestivalVO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	


}
