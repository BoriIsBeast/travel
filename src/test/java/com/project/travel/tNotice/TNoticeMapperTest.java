package com.project.travel.tNotice;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.travel.util.Pager;
@SpringBootTest
class TNoticeMapperTest {
	@Autowired
	private TNoticeMapper tNoticeMapper;

	//list
	//@Test
	void getListTest() throws Exception {
		Pager pager = new Pager();
		pager.makeRow();
		List<TNoticeVO> ar = tNoticeMapper.getList(pager);
		System.out.println(ar);
		assertEquals(10,ar.size());
		
	}
	
	//add
	//@Test
	void setAddTest()throws Exception{
		TNoticeVO tNoticeVO = new TNoticeVO();
		tNoticeVO.setTitle("Title Test");
		tNoticeVO.setId("Writer Test");
		tNoticeVO.setContents("Contents Test");
		
		int result = tNoticeMapper.setAdd(tNoticeVO);
			assertEquals(1, result);
		}

}
