package com.project.travel;

import static org.junit.jupiter.api.Assertions.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.travel.cart.CartMapper;
import com.project.travel.cart.CartVO;
@SpringBootTest
class CartTest {
	
	@Autowired
	private CartMapper cartMapper;

	@Test
	void setAdd() throws Exception {
		
		CartVO cartVO = new CartVO();
		
		cartVO.setId("id1");
		cartVO.setProductNum(29L);
		cartVO.setAmount(3L);
		cartVO.setPayCheck(0L);
		
		
		int result = cartMapper.setAdd(cartVO);
		
		assertEquals(1, result);
	}

}
