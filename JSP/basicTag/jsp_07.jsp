<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 에러 (예외)발생 시 이동할 페이지 지정 --%>
<%@ page errorPage="/basicTag/errorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>
</head>
<body>

<h1>에러페이지 테스트</h1>
<hr>

<% int num = 7/0; %>
</body>
</html>
