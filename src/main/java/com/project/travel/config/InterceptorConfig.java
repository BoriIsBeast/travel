package com.project.travel.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

import com.project.travel.interceptor.AdminInterceptor;
import com.project.travel.interceptor.LoginInterceptor;
import com.project.travel.interceptor.NoticeInterceptor;
import com.project.travel.interceptor.SellerInterceptor;
import com.project.travel.interceptor.TbestInterceptor;
import com.project.travel.interceptor.TfestivalInterceptor;
import com.project.travel.interceptor.QNAInterceptor;
import com.project.travel.interceptor.ReviewInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

		@Autowired
		private SellerInterceptor sellerInterceptor;
		@Autowired
		private AdminInterceptor adminInterceptor;
		@Autowired
		private QNAInterceptor qnaInterceptor;
		@Autowired
		private NoticeInterceptor noticeInterceptor;
		@Autowired
		private ReviewInterceptor reviewInterceptor;
		@Autowired
		private LoginInterceptor loginInterceptor;
		@Autowired
		private TbestInterceptor tbestInterceptor;
		@Autowired
		private TfestivalInterceptor tfestivalInterceptor;
		
		
		
		@Override
		public void addInterceptors(InterceptorRegistry registry) {
		
			registry.addInterceptor(sellerInterceptor)
				
					.addPathPatterns("/admin/*")
					.addPathPatterns("/product/add")
					.addPathPatterns("/product/update")
					.addPathPatterns("/product/delete")
					.addPathPatterns("/tNotice/add")
					.addPathPatterns("/Tbest/add")
					.addPathPatterns("/Tfestival/add")
					.addPathPatterns("/Tbest/update")
					.addPathPatterns("/Tbest/delete")
					.addPathPatterns("/Tfestival/update")
					.addPathPatterns("/Tfestival/delete");
					
			
			//registry.addInterceptor(adminInterceptor)
			//		.addPathPatterns(""); // 매출페이지 등록
		
			
			registry.addInterceptor(qnaInterceptor)	
			
					
					.addPathPatterns("/tQna/update")
					.addPathPatterns("/tQna/delete");
			
			registry.addInterceptor(noticeInterceptor)
					
					
					.addPathPatterns("/tNotice/update")
					.addPathPatterns("/tNotice/delete");
			
			registry.addInterceptor(reviewInterceptor)
					
					
					.addPathPatterns("/tReview/update")
					.addPathPatterns("/tReview/delete");
			
			
			registry.addInterceptor(tbestInterceptor)
			
					.addPathPatterns("/Tbest/update")
					.addPathPatterns("/Tbest/delete");
			
			registry.addInterceptor(tfestivalInterceptor)
			
					.addPathPatterns("/Tfestival/update")
					.addPathPatterns("/Tfestival/delete");
				
			
			registry.addInterceptor(loginInterceptor)
					
					
					.addPathPatterns("/tQna/add")
					.addPathPatterns("/tReview/add");
			
			
			//WebMvcConfigurer.super.addInterceptors(registry);
		}
		
}
