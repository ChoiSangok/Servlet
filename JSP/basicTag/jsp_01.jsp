<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 설명</title>
</head>
<body>

<h3>hello jsp!</h3>

<% String name="alice";
	System.out.println(name); // 이클립스 콘솔 출력
%>

<%--jsp 주석 --%>
<!-- html 주석  -->

<%--스크립트릿 태그, 자바코드를 작성하는 영역 --%>
<%
	// 자바주석 사용가능
%>

//밖에서는 html문장으로 사용됨

<%	String scriptlet ="HI";
	System.out.println( scriptlet.length());
%>
<hr>
<% out.print("브라우저 출력"); //out == resp.getWriter()
%>

<hr>
<% for(int i=0;i<3;i++){ %>

<h3>스크립트릿 + html</h3>

<% } %>

<hr>
<%
//	메소드 정의 불가
//	public void method(){
//	}

//	접근제한자를 이용한 변수 선언 불가
//	private int num=10;


%>
</body>
</html>




