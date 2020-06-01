<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fortokens</title>
</head>
<body>

<h1>c: forTokens</h1>
<hr>

<% String fruits= "apple:banana:cherry:durian"; %>
<c:forTokens items="<%=fruits %>" delims=":" var="f">
	${f }<br>
</c:forTokens>

<hr>

<% String fruits2="apple:banana,cherry durian"; %>
<c:forTokens items="<%=fruits2 %>" delims=" ,:" var="f">
	${f }<br>
</c:forTokens>	

<hr>

<% String filename="test.jpg"; %>
<c:forTokens items="<%=filename %>" delims="." var="item"
	varStatus="stat">

	<c:if test="${stat.last }">
		 확장자: %{item }<br>
		 
		 ---------
		 <c:choose>
		 	<c:when test="${item eq txt }"></c:when>
		 	<c:when test="${item eq jpg }"></c:when>
		 	<c:when test="${item eq exe }"></c:when>

		 </c:choose>
	</c:if>
	${item }<br>


</c:forTokens>

</body>
</html>

