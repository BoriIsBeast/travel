package com.project.travel.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.project.travel.member.MemberVO;

@Component
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;

		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");


		if(memberVO != null) {
			
			
				check = true;
			
		}

		if(!check) {

			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("path", "../member/login");

			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/getResult.jsp");
			view.forward(request, response);
		}

		return check;
	}
}