<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

<h1>메인페이지</h1>
<h3>welcome page</h3>

<hr>
<!-- 컨텍스트 패스 : request정보객체에 들어있음 -->

<a href="<%=request.getContextPath() %>/board/insert"><button>입력페이지</button></a>


	
</body>
</html>
