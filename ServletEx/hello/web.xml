package hello;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
// java 로 시작하면 기본기능
// javax 는 확장판
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HiServlet extends HttpServlet{
	
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//매개변수
		//	 HttpServletRequest : HTTP 요청 정보 객체
		//	 HttpServletResponse : HTTP 응답 정보 객체
		
		
		System.out.println("get 메소드 요청");
		//응답메시지의 형식을 알려주는 코드
		// ->html 문법의text 이며 한글코딩은 utf-8
		resp.setContentType("text/html;charset=utf-8");
		

		resp.getWriter().println("<h1>우리가 직접 만든 서블릿!</h1>");
		resp.getWriter().println("<h3>안녕!</h3>");
		
		
		System.out.println("콘솔 확인용 , 테스트용 스트림 출력");
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
	}
	

}
