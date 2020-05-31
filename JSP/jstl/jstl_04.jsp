<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>c:if</h1>
<hr>

<c:if test="true">
   <h3>TRUE : 무조건 실행</h3>
</c:if>

<c:if test="false">
   <h3>FALSE : 무조건 실행하지 않음</h3>
</c:if>

<% if(true) { %>
   <h3>TRUE : 무조건 실행</h3>
<% } %>

<hr>
<c:if test="단순 문자열">
   <h3>실행될까? 안될까?</h3>
</c:if>
<%-- test속성은 문자열로 처리되지만 "true" 나 "false"만 오도록 해야한다 --%>

<hr>
<c:if test="${10 eq 10 }">
   <h3>출력출력</h3>
   <h3>안됨</h3>
</c:if>
<%-- 속성값으로 빈 칸이 들어가지 않도록 조심할 것!! "true" 돼서 false처리됨 --%>

<hr>
<%-- 서블릿Controller에서 DB조회 결과를 모델값으로 전달햿음 --%>
<%--   request컨텍스트 영역 사용함 --%>
<% request.setAttribute("userList", null); //조호된 결과가 없음, null%>

<c:if test="${empty userList }">
   <h3>조회된 데이터가 없습니다</h3>
</c:if>

<c:if test="${not empty userList }">
<table>
<tr>
   <th>아이디</th>
   <th>닉네임</th>
</tr>
<tr>
   <td>${userList[0].id }</td>
   <td>${userList[0].pw }</td>
</tr>

</table>
</c:if>



</body>
</html>
