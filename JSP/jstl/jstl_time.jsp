<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- 가준: 현재시간 -->
<!-- 시간 1: 2020-06-01 10:43:23 -->
<!-- 시간 2 :2020-05-12 15:13:57 -->

<!-- jstl이용해서 현재시간과 비교해서 -->
<!-- 기준날짜와 같은 날이면 시:분 으로 출력 -->
<!-- 기준날짜보다 이전 날이면 연-월-일 로 출력 -->


<c:set var="nowtest" value="<%=new Date() %>"/>
현재시간(기준) : <fmt:formatDate value="${nowtest }" pattern="yyyy-MM-dd" />
<fmt:formatDate value="${nowtest }" pattern="HH:mm:ss" /><br><br>

<!-- 그래고리안 -->

<c:set var="time1" 
	value="<%=new GregorianCalendar(2020,5,1,10,43,23).getTime() %>"/>

<c:set var="time2" 
	value="<%=new GregorianCalendar(2020,4,12,15,13,57).getTime() %>" />
	
	
<!-- 현재 -->
<fmt:formatDate value="${nowtest }" pattern="yyyy-MM-dd" var="tt" />
tt : ${tt }<br>
<!-- 그래고리안이용 -->
<fmt:formatDate value="${time1 }" pattern="yyyy-MM-dd" var="gt_tt"/>
gt_tt : ${gt_tt }<br>

<fmt:formatDate value="${time2 }" pattern="yyyy-MM-dd" var="gt_tt2"/>
gt_tt2 : ${gt_tt2 }<br>


<!-- 같으면 -->
<c:if test="${tt eq gt_tt  }">
	같으면  시  : 분 출력1 : <fmt:formatDate value="${nowtest }" pattern="HH:mm"/><br><br>
</c:if>



<!-- 다르면 -->
<c:if test="${tt lt gt_tt2 }">
	연:월:일 출력 <fmt:formatDate value="${time2 }" pattern="yyyy-MM-dd"/>
</c:if>


<%-- <c:choose> --%>

<!-- 	<!-- 이전날짜 -->
<%-- 	<c:when test="${tt lt gt_tt2 }"> --%>
<%-- 		<fmt:formatDate value="${time }" pattern="yyyy-MM-dd"/> --%>
<%-- 	</c:when> --%>

<%-- </c:choose> --%>


</body>
</html>
