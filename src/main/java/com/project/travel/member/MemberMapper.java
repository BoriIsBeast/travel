package com.project.travel.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	public int setUpdatePw(MemberVO memberVO)throws Exception;
	
	public int setUpdate(MemberVO memberVO)throws Exception;
	
	public int setJoin(MemberVO memberVO)throws Exception;
	
	public MemberVO getFindId(MemberVO memberVO)throws Exception;
	
	public MemberVO getMypage(MemberVO memberVO)throws Exception;
	
	public MemberVO login(MemberVO memberVO)throws Exception;
}
