package com.nilili.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nilili.member.service.MemberService;
import com.nilili.member.vo.Member;
import com.nilili.subscribe.model.service.SubscribeService;
import com.nilili.subscribe.model.vo.Subscribe;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.mb")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
	
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String before = request.getHeader("referer");
		
		Member member = new MemberService().loginMember(memberId,memberPwd);
		//구독정보도 꺼내오기 (받아온 멤버객체에서 memberNO 꺼내오기)
		
		
		if(member != null) {
			
		int memberNo = member.getMemberNO();
		Subscribe sub =	new SubscribeService().updateSubscribe(memberNo);
		session.setAttribute("loginMember", member);
		session.setAttribute("sub", sub);
		response.sendRedirect(before);
		
		}else {
			session.setAttribute("alertMsg","아이디와 비밀번호를 다시 확인해주세요" );
			response.sendRedirect(before);
			
		}
		
		
		
	}

}
