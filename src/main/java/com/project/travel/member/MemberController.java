package com.project.travel.member;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.product.ProductVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@PostMapping("checkPw")
	public ModelAndView checkPw(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		
		
		return mv;
	}
	
	@GetMapping("checkPw")
	public ModelAndView checkPw(HttpSession session)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		
		memberVO = memberService.getMypage(memberVO);
		
		
		mv.setViewName("member/checkPw");
		mv.addObject("check", memberVO);
		
		return mv;
	}
	
	@PostMapping("updatePw")
	public ModelAndView updatePw(MemberVO memberVO,BindingResult bindingResult)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		
		
		int result = memberService.setUpdatePw(memberVO);
		if(result == 0) {
			mv.addObject("msg", "비밀번호 변경 실패");
			mv.addObject("path", "./updatePw");
			mv.setViewName("common/getResult");
		}else {
			mv.addObject("msg", "비밀번호 변경 성공");
			mv.addObject("path", "/");
			mv.setViewName("common/getResult");
			
		}
		
		return mv;
	}
	
	@GetMapping("updatePw")
	public void updatePw(@ModelAttribute MemberVO memberVO,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO = (MemberVO) session.getAttribute("member");
		
		memberVO = memberService.getMypage(memberVO);
		
		
		mv.setViewName("member/mypage");
		mv.addObject("vo", memberVO);
	}
	
	@GetMapping("kakaoLogin")
	public void kakaoLogin()throws Exception{
		
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(MemberVO memberVO,BindingResult bindingResult)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberVO.getId());
		
		int result = memberService.setUpdate(memberVO);
		if(result == 0) {
			mv.addObject("msg", "회원정보 수정 실패");
			mv.addObject("path", "./mypage");
			mv.setViewName("common/getResult");
		}else {
			mv.addObject("msg", "회원정보 수정 성공");
			mv.addObject("path", "../");
			mv.setViewName("common/getResult");
			
		}
		
		
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView setUpdate(@ModelAttribute MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		memberVO = memberService.getMypage(memberVO);
		
		mv.setViewName("member/update");
		mv.addObject("vo", memberVO);
		
		return mv;
	}
	
	@PostMapping("findPw")
	public ModelAndView getFindPw(MemberVO memberVO, HttpServletResponse response)throws Exception{
		ModelAndView mv = new ModelAndView();
			
		memberService.findPw(response, memberVO);
		
		mv.setViewName("/member/findPw");
		return mv;
	}
	
	@GetMapping("findPw")
	public void getFindPw()throws Exception{
		
	}
	
	@PostMapping("findId")
	public ModelAndView getFindId(MemberVO memberVO,BindingResult bindingResult)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		memberVO = memberService.getFindId(memberVO);
		mv.setViewName("member/findIdResult");
		mv.addObject("findIdResult", memberVO);
		
		return mv;
	}
	
	@GetMapping("findId")
	public void getFindId(@ModelAttribute MemberVO memberVO)throws Exception{
		
	}
	
	@GetMapping("mypage")
	public ModelAndView getMypage(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		
		memberVO = memberService.getMypage(memberVO);
		
		
		mv.setViewName("member/mypage");
		mv.addObject("vo", memberVO);
		
		return mv;
	
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		
		return "redirect:../";
	}
	
	@PostMapping("login")
	public ModelAndView login(@Valid MemberVO memberVO,BindingResult bindingResult, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		memberVO = memberService.login(memberVO);
		
		mv.setViewName("member/login");
		
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}
		return mv;
	}
	
	@GetMapping("login")
	public void login(@ModelAttribute MemberVO memberVO)throws Exception{
		
	}
	
	
	@PostMapping("join")
	public ModelAndView setJoin(@Valid MemberVO memberVO,BindingResult bindingResult)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(memberService.memberError(memberVO, bindingResult)) {
			 mv.setViewName("member/join"); 
			 return mv; 
		}
		
		int result = memberService.setJoin(memberVO);
		
		mv.setViewName("redirect:../");
		
		return mv;
		
	}
	
	@GetMapping("join")
	public ModelAndView setJoin(@ModelAttribute MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/join");
		
		return mv;
	}
	@GetMapping("delete")
	public ModelAndView setDelelte(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.setDelete(memberVO);
		if(result == 0) {
			mv.addObject("msg", "회원 삭제 실패");
			mv.addObject("path", "./");
			mv.setViewName("common/getResult");
		}else {
			mv.addObject("msg", "회원 삭제 성공");
			mv.addObject("path", "/admin/memberList");
			mv.setViewName("common/getResult");
			
		}

		return mv;
	}
}
