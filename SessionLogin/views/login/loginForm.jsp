<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>

<h1>로그인폼</h1>
<hr>

<!-- 비로그인상태 -->
<c:if test="${empty login }">
<form action="/login/login" method="post">

<label for="userid">ID</label>
<input type="text" id="userid" name="userid" /><br>

<label for="userpw">PW</label>
<input type="text" id="userpw" name="userpw" /><br><br>


<!-- <button>로그인</button> -->
<input type="submit" value="로그인" />
</form>
</c:if>


<!-- 로그인 되어있는 상태 -->
<c:if test="${not empty login }">
<input type ="button" value="로그아웃" onclick="location.href='/login/logout'" />

</c:if>
</body>
</html>
