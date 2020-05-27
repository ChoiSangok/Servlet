package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Member;
import service.face.MemberService;
import service.impl.MemberServiceImpl;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member/join")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//MemberService 객체 생성
	private MemberService memberService = new MemberServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//접속테스트
		System.out.println("/member/join get 요청완료");
		
		//view 지정 응답하기(forward)
		req.getRequestDispatcher("/WEB-INF/views/member/joinForm.jsp")
			.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//접속테스트
		System.out.println("/member/join POST - 요청완료");
		
		//1. post데이터ㅏ  한글 인콛ㅇ설정(,utf-8)
		req.setCharacterEncoding("UTF-8");
		
		
		//2. 요청 파라미터를 memberDTO 에 저장하기
		//service 이용
		// (userid, nick, email)
		Member member = memberService.getParam(req);
		
		System.out.println(member);
		
		
		//3. member dto 를 데이터베이스에 입력
		//service 이용
		//입력된 정보 (userno포함) 반환받기
		Member result = memberService.join(member);
		System.out.println("membercontroller result - " + result);
		
		
		//4. db에 입력된 데이터를 view에 전달하기
		// request 객체 이용
		req.setAttribute("result", result);
		
		//5. view를 지정하고 응답하기(forward)
		req.getRequestDispatcher("/WEB-INF/views/member/result.jsp")
			.forward(req, resp);
		
	}

}
