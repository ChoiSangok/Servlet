package hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/hello : 접속 완료");
		
		//한글인ㄱ코딩
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out=resp.getWriter();
		
		out.append("<h1>하이하이</h1>")
			.append("<h3>잘되나요</h3>");
	}
}
