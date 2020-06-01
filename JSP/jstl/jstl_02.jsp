<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_02`</title>
</head>
<body>

<h1>c:out</h1>
<hr>

<c:out value="HELLO! JSTL!" /><br>
hello! jstl!
<hr>

eldata : <c:out value="${eldata }" /><br>
empty : <c:out value="${empty eldata }" />
<hr>

<c:out value="" default="null값 출력" /><br><%--빈 문자열 --%>
<c:out value="null" default="null값 출력함"/><br><%--null 문자열 --%>
<c:out value="${null }" default="null값 출력함" /><br><%--null 값 --%>

<c:out value="${eldata }" default="null값 출력함" /><br><%--null 값 --%>

<c:out value="<%=null %>" default="null값 출력함" /><%--null값 --%>

<c:out value="<h3>태그출력</h3>" /><%-- innerText 와 비슷한 동작 --%>
<c:out value="<h3>태그출력</h3>" escapeXml="false" />

<%="<h3>태그 출력</h3>" %> <%--innerHTML과 비슷한 동작 --%>

<%="&lt;h3&gt;태그  출력&lt;/h3&gt;" %>

&nbsp;<br>

&laquo;<br>
&raquo;<br>

&larr;<br>
&rarr;<br>

<br>
</body>
</html>


<hr>

<% String str="테스트 문자열"; //java영역변수ㅜ %>
str출력 : <c:out value="${str }"/><br>
str출력 : <c:out value="${pageScope.str }"/><br>
str출력 : <c:out value="<%=str %>"/><br>

<!-- 스크립트릿은 jstl의 속성값으로 적용되지 않는다 -->
<!-- el과 expression 을 주로 사용해야 한다 -->

str출력 : <c:out value="<%out.print(str); %>" /><br>

<hr>
<%	request.setAttribute("str", str); //request 컨텍스트 영역에 추가 %>
str출력 : <c:out value="${str }"/><br>
str출력 : <c:out value="${requestScope.str}"/><br>
str출력 : <c:out value="<%=str %>"/><br>


