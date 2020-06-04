<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>

<h1>회원가입 form</h1>
<hr>

<form action="<%=request.getContextPath() %>/board/insert" method="post">

<label>아이디<input type="text" name="uid"/></label>
<label>패스워드<input type="text" name="upw"/></label>

<button>가입</button>
</form>

</body>
</html>
