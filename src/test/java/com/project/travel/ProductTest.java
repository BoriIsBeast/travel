package com.project.travel;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.travel.product.ProductMapper;
import com.project.travel.product.ProductVO;
import com.project.travel.util.Pager;
@SpringBootTest
class ProductTest {
	@Autowired
	private ProductMapper productMapper;

	@Test
	void setAdd()throws Exception{
		ProductVO productVO = new ProductVO();
		
		for(int i=3;i<51;i++) {
		productVO.setId("master");
		productVO.setLargeCategory("test"+i);
		productVO.setMediumCategory("test"+i);
		productVO.setSmallCategory("test"+i);
		productVO.setName("test"+i);
		productVO.setPrice(5000L);
		productVO.setContents("test"+i);
		productVO.setAddress("test"+i);
		productVO.setHomePage("test"+i);
		
		int result = productMapper.setAdd(productVO);
		}
		System.out.println("add finish");
		//assertEquals(1, result);
	}
	//@Test
//	void getList() throws Exception{
//		ProductVO productVO = new ProductVO();
//		
//		List<ProductVO> ar=productMapper.getList(Pager);
//        
//        System.out.println(ar);
//        assertEquals(2,ar.size());
//	}
	
	//@Test
	void setUpdate() throws Exception{
		ProductVO productVO = new ProductVO();
		
		productVO.setPrice(5000L);
		productVO.setContents("ㅎㅎ");
		productVO.setProductNum(3L);
		
		int result = productMapper.setUpdate(productVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	void setDelete() throws Exception{
		ProductVO productVO = new ProductVO();
		
		productVO.setProductNum(3L);
		int result = productMapper.setDelete(productVO);
		
		assertEquals(1, result);
	}
	//@Test
	void getDetail() throws Exception{
		ProductVO productVO = new ProductVO();
		productVO.setProductNum(13L);
		
		//productVO = productMapper.getDetail(ProductVO);
		
	}

}
