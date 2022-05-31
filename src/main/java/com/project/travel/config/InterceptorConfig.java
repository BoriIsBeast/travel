package com.project.travel.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

import com.project.travel.interceptor.AdminInterceptor;
import com.project.travel.interceptor.SellerInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

		@Autowired
		private SellerInterceptor sellerInterceptor;
		@Autowired
		private AdminInterceptor adminInterceptor;
		
		
		
		
		@Override
		public void addInterceptors(InterceptorRegistry registry) {
		
			registry.addInterceptor(sellerInterceptor)
				
					.addPathPatterns("/admin/*");
			
			//registry.addInterceptor(adminInterceptor)
			//		.addPathPatterns(""); // 매출페이지 등록
		
			
			
			
			
			//WebMvcConfigurer.super.addInterceptors(registry);
		}
		
}
