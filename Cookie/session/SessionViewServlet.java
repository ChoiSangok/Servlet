package session;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/session/view")
public class SessionViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//세션 객체 얻기
		HttpSession session = request.getSession();
		
		//세션 정보 출력
		System.out.println("test : " + session.getAttribute("test"));
		
		System.out.println("------------------------");
		
		//세션 관련 정보 확인하기
		
		//세션 아이디
		System.out.println("Session ID : " + session.getId());
		
		//세션 생성 시간
		System.out.println("CreateTime : " + new Date(session.getCreationTime() ));
		
		//세션 최근 접속 시간
		System.out.println("lastAccessedTime : " + new Date(session.getLastAccessedTime() ));
		
		//세션 유지 시간
		System.out.println("maxinactiveinterval : "
				+ session.getMaxInactiveInterval());
		
		//세션이 새롭게 생소ㅓㅇ된 것인지 판단
		System.out.println("isNew : "+session.isNew());

		System.out.println("=----------------------");
		
		//VIEW 지정 - forward
		request.getRequestDispatcher("/WEB-INF/views/session/view.jsp")
			.forward(request, response);

		
	}

}








