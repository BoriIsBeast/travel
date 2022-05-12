package com.project.travel;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.travel.product.ProductMapper;
import com.project.travel.product.ProductVO;
@SpringBootTest
class ProductTest {
	@Autowired
	private ProductMapper productMapper;

	//@Test
	void setAdd()throws Exception{
		ProductVO productVO = new ProductVO();
		
		productVO.setId("master");
//		productVO.setLargeCategory(0L);
//		productVO.setMediumCategory(3L);
		productVO.setSmallCategory("연인과 함께");
		productVO.setName("안압지");
		productVO.setPrice(5000L);
		productVO.setContents("신라시대");
		
		//int result = productMapper.setAdd(productVO);
		
		//assertEquals(1, result);
	}
	//@Test
	void getList() throws Exception{
		ProductVO productVO = new ProductVO();
		
		List<ProductVO> ar=productMapper.getList();
        
        System.out.println(ar);
        assertEquals(2,ar.size());
	}
	
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
