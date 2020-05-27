<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! private int age=11; //접근제한자 사용가능 %>
<%------------------------------------------ --%>
<%! String name="alice"; //멤버필드 %>
<% String hobby="soccer"; //_jspService() 메소드의 지역 변수 %>    

<%------------------------------------------ --%>

<%! //메소드 정의
	public void method() {
		System.out.println("hello" + name );
	}
%>

<% method(); //메소드 호출  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp_02</title>
</head>
<body>

</body>
</html>
