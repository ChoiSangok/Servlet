<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>EL 테스트 01</h1>
<hr>

<%="<h3>표현식, expression</h3>" %>
<h3><%="표현식, expression" %></h3>

<hr>

<% out.println("<h3>스크립트릿, scriptlet</h3>"); %>
<h3><% out.println("스크립트릿, scriptlet"); %></h3>

<hr>

${"<h3>표현언어, el</h3>" }
<h3>${"표현언어, el" }</h3>


</body>
</html>
