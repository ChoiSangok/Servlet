package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.getRequestDispatcher("/WEB-INF/views/login/loginForm.jsp")
			.forward(req, resp);
		

		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//userid, userpw 전달파라미터 처리하기
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		
		//잘되나 확인~
		System.out.println(userid);
		System.out.println(userpw);
		
		//포워드 될 url (view)
		String url = null;
		
		//세션 객체 생성
		HttpSession session = req.getSession();
		
		// 로그인 인증(Authentication, auth )
		
		if("abc".equals(userid) && "123".equals(userpw)) {
			//로그인성공
			
			url = "/WEB-INF/views/login/loginSuccess.jsp";
			
			session.setAttribute("login", true); // 로그인상태, login=true
			session.setAttribute("loginid", userid); //로그인 아이디
			
			
			
			
		} else {
			//로그인 실패
			url = "/WEB-INF/views/login/loginFail.jsp";
		}
		
		//view 지정 - 포워드
		req.getRequestDispatcher(url).forward(req, resp);
		
	}
	
}







