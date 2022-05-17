package com.project.travel;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.travel.Tfestival.TfestivalMapper;
import com.project.travel.Tfestival.TfestivalVO;
import com.project.travel.util.Pager;

@SpringBootTest
class TravelApplicationTests {
	
	@Autowired
	private TfestivalMapper tfestivalMapper;

	//list
	//@Test
	void listTest() throws Exception {
	Pager pager = new Pager();
	pager.makeRow();
	List<TfestivalVO> ar = tfestivalMapper.list(pager);
	System.out.println(ar.get(0).getName());
	System.out.println(ar.get(9).getName());
	assertEquals(10, ar.size());
	}
	
	@Test
	void detailTest()throws Exception{
		TfestivalVO tfestivalVO = new TfestivalVO();
		tfestivalVO.setNum(21L);
		tfestivalVO = tfestivalMapper.detail(tfestivalVO);
		assertNotNull(tfestivalVO);
	}

}
