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

/**
 * Servlet implementation class SubscribeController
 */
@WebServlet("/subscribe.mb")
public class SubscribeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubscribeController() {
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
		
		String memberName = request.getParameter("memberName");
		int memberNo = Integer.parseInt(request.getParameter("memberNo"));
		
	//이거는 구독한거 Y로 바꿔주는  update 를 위한 코드
	int result=	new MemberService().SubscribeChange(memberName,memberNo);
	
	//이거는 사용자 편의를 위해 session 영역에있는 loginMember의 subscribe를 update하는 코드
	 //위에서 한번에 하고 싶었으나 jsp까지 건들어야하는 관계로 일단 따로 가겠습니다 -재혁
	 Member loginMember = new MemberService().updateLoginMember(memberNo);
	 
	HttpSession session = request.getSession();
	//세션에 저장되어있는 loginMember를 수정후의 loginMember로 교체
	session.setAttribute("loginMember", loginMember);
	
	response.setContentType("text/html;charset =UTF-8");//인코딩
	
	response.getWriter().print(result);

			
			
			
			
		
	}

}
