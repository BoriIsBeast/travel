package com.project.travel.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.project.travel.member.MemberVO;

@Component
public class AdminInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;

		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");


		if(memberVO != null) {
			
			int type = memberVO.getTType();
			
			if(type == 2) {
				check = true;
			}
		}

		if(!check) {

			request.setAttribute("msg", " 총 관리자만 가능합니다.");
			request.setAttribute("path", "../");

			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/getResult.jsp");
			view.forward(request, response);
		}

		return check;
	}
}
