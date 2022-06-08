package com.project.travel.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.project.travel.member.MemberVO;
import com.project.travel.tNotice.TNoticeMapper;
import com.project.travel.tNotice.TNoticeVO;

@Component
public class NoticeInterceptor implements HandlerInterceptor {

	@Autowired
	private TNoticeMapper tNoticeMapper;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = false;
		String method = request.getMethod();
		System.out.println(method);

		// TODO Auto-generated method stub
		String num = request.getParameter("num");
		TNoticeVO tNoticeVO = new TNoticeVO();
		tNoticeVO.setNum(Long.parseLong(num));
		tNoticeVO = tNoticeMapper.getDetail(tNoticeVO);

		MemberVO memberVO = (MemberVO) request.getSession().getAttribute("member");
		if (memberVO != null) {

			int type = memberVO.getTType();

			if (type == 1 || type == 2) {
				check = true;
			}
		}
		// boolean check=false;
		// 작성자와 로그인 한 사용자의 id가 일치하면 통과
		if (tNoticeVO.getId().equals(memberVO.getId())) {
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
