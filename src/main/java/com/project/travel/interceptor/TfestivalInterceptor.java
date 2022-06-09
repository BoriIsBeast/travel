package com.project.travel.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.project.travel.Tfestival.TfestivalMapper;
import com.project.travel.Tfestival.TfestivalVO;
import com.project.travel.member.MemberVO;

@Component
public class TfestivalInterceptor implements HandlerInterceptor {

	@Autowired
	private TfestivalMapper tfestivalMapper;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;
		String method = request.getMethod();
		System.out.println(method);
		// TODO Auto-generated method stub
		String num = request.getParameter("num");
		TfestivalVO tfestivalVO = new TfestivalVO();
		tfestivalVO.setNum(Long.parseLong(num));
		tfestivalVO = tfestivalMapper.detail(tfestivalVO);

		MemberVO memberVO = (MemberVO) request.getSession().getAttribute("member");
		if (memberVO != null) {
			int type = memberVO.getTType();

			if (type == 0 || type == 2) {
				check = true;
			}
		}

		if (tfestivalVO.getId().equals(memberVO.getId())) {
			check = true;
		}

		if (!check) {
			request.setAttribute("msg", "관리자와 작성자만 가능합니다.");
			request.setAttribute("path", "../");

			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/getResult.jsp");
			view.forward(request, response);
		}
		return check;
	}

}
