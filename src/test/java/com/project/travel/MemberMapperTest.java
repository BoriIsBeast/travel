package com.project.travel;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.travel.member.MemberMapper;
import com.project.travel.member.MemberVO;
@SpringBootTest
public class MemberMapperTest {

	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	void JoinTest() throws Exception{
		MemberVO memberVO = new MemberVO();
		
		memberVO.setId("admin");
		memberVO.setPw("admin");
		memberVO.setName("관리자");
		memberVO.setBirth("19930616");
		memberVO.setPhone("010-7432-1112");
		memberVO.setEmail("wlsdn147@naver.com");
		memberVO.setTType(2);
		
		int result = memberMapper.setJoin(memberVO);
		
		
		assertEquals(result, 1);
		
		
		
	}
}
