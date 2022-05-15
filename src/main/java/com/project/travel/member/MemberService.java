package com.project.travel.member;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
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
	
	
}
