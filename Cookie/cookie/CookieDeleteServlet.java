package cookie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cookie/delete")
public class CookieDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//쿠키 삭제 방법
		// 쿠키의 maxAge( z쿠키 유지시장)를 0 으로 설정한다
		
		//요청된 쿠키 정보 얻기
		Cookie[] cookies = request.getCookies();
		
		//요청된 모든 쿠키의 maxAge를 변경한 후 다시 클라이언트에게 전달한다
		for(int i=0;i<cookies.length;i++) {
			cookies[i].setMaxAge(0); //즉시삭제
//			cookies[i].setMaxAge(3); //3초 뒤 삭제 
//			cookies[i].setMaxAge(24*60*60); //하루 동안 유지하도록 설정
			
			response.addCookie(cookies[i]); //클라이언트에게 쿠키 전달
			
		}
		
		//view 지정
		request.getRequestDispatcher("/WEB-INF/views/cookie/delete.jsp")
			.forward(request, response);
		
			
	}

}
