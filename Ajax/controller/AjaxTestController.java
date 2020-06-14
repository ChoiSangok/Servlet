package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dto.Member;

@WebServlet("/ajax/test")
public class AjaxTestController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.getRequestDispatcher("/WEB-INF/views/ajax/test.jsp").forward(req, resp);;
   }

   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
//      resp.setContentType("text/html; charset=utf-8");
      //응답 데이터 형식 지정 - MIME 타입
      //json은 데이터 타입 다르게 설정해주어야한다
      resp.setContentType("application/json; charset=utf-8");
      //응답 데이터 출력 스트림
      PrintWriter out = resp.getWriter();
      
      // 데이터를 직접 출력(응답) 하기
      out.println("response Data Send");
      
//      out.println("\"JSON DATA\""); //JSON Text , String  타입 전송
//      out.println("{\"data\" : \"JSON DATA\"}"); //JSON TEXT , Object 타입
//      out.println("{\"cnt\" : 1}"); //JSON타입 Object타입
      
      //DTO를 이용한 출력(응답)
      Member member = new Member();
      member.setId("Apple");
      member.setPw("12345");
      
      //마샬링 및 응답(Java DTO Object -> JSON Text)
//      out.println(new Gson().toJson(member)); //겹치면 제대로 안나오니깐 주석~
      
      
      // - - - - List 를 이용한 응답 - - - - - 
      List<Member> list= new ArrayList<>();
      
      Member m1 = new Member();
      m1.setId("A");
      m1.setPw("Apple");
      
      list.add(m1);
      
      Member m2 = new Member();
      m2.setId("B");
      m2.setPw("Banana");
      
      list.add(m1);
      list.add(m2);
      
      out.println( new Gson().toJson(list));
      // - - - - - - - - - - - - - - - - -
      
      
      
   }

}


