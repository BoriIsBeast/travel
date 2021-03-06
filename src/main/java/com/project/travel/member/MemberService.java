package com.project.travel.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.project.travel.util.SendEmail;

@Service
public class MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	SendEmail sendEmail;
	
	public boolean memberError(MemberVO memberVO,BindingResult bindingResult)throws Exception{
		boolean check = false;
		//check= false : 검증 성공 (error 없음)
		//check= true : 검증 실패 (error 있음)

		//1. annotation 기본 검증 결과
		check = bindingResult.hasErrors();

		//2. Password가 일치하는지 수동 검증


		//3. ID 중복 검사
		MemberVO idCheck = memberMapper.getId(memberVO);
		if(idCheck != null) {
			check = true;
			bindingResult.rejectValue("id", "member.id.equal");
		}

		return check;
	}

	
	public int setUpdatePw(MemberVO memberVO)throws Exception{
		
		
		return memberMapper.setUpdatePw(memberVO);
	}
	
	public int setUpdate(MemberVO memberVO)throws Exception{
		
		return memberMapper.setUpdate(memberVO);
	}
	
	public MemberVO getFindId(MemberVO memberVO)throws Exception{
		
		return memberMapper.getFindId(memberVO);
	}
	
	public int setJoin(MemberVO memberVO)throws Exception{
		
		return memberMapper.setJoin(memberVO);
	}
	
	public MemberVO getMypage(MemberVO memberVO)throws Exception{
		
		return memberMapper.getMypage(memberVO);
	}
	
	public MemberVO login(MemberVO memberVO)throws Exception{
		
		return memberMapper.login(memberVO);
	}
	public void findPw(HttpServletResponse response, MemberVO memberVO) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		MemberVO check = memberMapper.getMypage(memberVO);
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(check == null) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!memberVO.getEmail().equals(check.getEmail())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			memberVO.setPw(pw);
			// 비밀번호 변경
			memberMapper.setUpdatePw(memberVO);
			
			// 비밀번호 변경 메일 발송
			sendEmail.sendEmail(memberVO, "findpw");
			

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}	
	}
	
	public int setDelete(MemberVO memberVO)throws Exception{
		return memberMapper.setDelete(memberVO);
	}
}
