package session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/session/create")
public class SessionCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// SESSION_ID 는 톰캣이 알아서 생성함
		
		// 세션 정보만 생성해서 처리하면 된다
		
		HttpSession session = request.getSession(); //세션 객체 생성
		
		session.setAttribute("test", "Apple"); //세션 정보 저장
		
		//VIEW 지정 - forward
		request.getRequestDispatcher("/WEB-INF/views/session/create.jsp")
			.forward(request, response);
		
	}

}




