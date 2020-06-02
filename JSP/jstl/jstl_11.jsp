<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt: formatDate</title>
</head>
<body>
<h1>fmt: formatDate</h1>
<hr>

<c:set var="now" value="<%=new Date() %>"/>
now : ${now }<br>

<hr>

default : <fmt:formatDate value="${now }" type="date" dateStyle="default"/><br>
short : <fmt:formatDate value="${now }" type="date" dateStyle="short"/><br>
medium : <fmt:formatDate value="${now }" type="date" dateStyle="medium"/><br>
long : <fmt:formatDate value="${now }" type="date" dateStyle="long"/><br>
full : <fmt:formatDate value="${now }" type="date" dateStyle="full"/><br>
<hr>


default : <fmt:formatDate value="${now }" type="time" timeStyle="default"/><br>
short : <fmt:formatDate value="${now }" type="time" timeStyle="short"/><br>
medium : <fmt:formatDate value="${now }" type="time" timeStyle="medium"/><br>
long : <fmt:formatDate value="${now }" type="time" timeStyle="long"/><br>
full : <fmt:formatDate value="${now }" type="time" timeStyle="full"/><br>
<hr>


<fmt:formatDate value="${now }" type="both"/><br>

<fmt:formatDate value="${now }" type="both"
 dateStyle="full" timeStyle="short"/><br>

<hr>
yyyy-MM-dd : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/><br>

HH:mm:ss.S : <fmt:formatDate value="${now }" pattern="HH:mm:ss.S"/><br>


<!-- java.util.Date : 고정된(상수) 시간을 저장 -->
<!-- java.util.Calendar : 지정된 시간 저장, 저장된 시간을 변경할 수 있음 -->

<!-- java.util.GregorianCalendar -->

<c:set var="testTime" 
	value="<%=new GregorianCalendar(2020,5,1,12,5,8).getTime() %>"/>

testTime:${testTime }<br>
<hr>

<fmt:formatDate value="${testTime }" type="both"/><br>

KK : <fmt:formatDate value="${testTime }" pattern="KK"/><br>

<hr>
<!-- 오전 오후 표현 -->
a : <fmt:formatDate value="${testTime }" pattern="a"/><br>
<hr>

z : <fmt:formatDate value="${testTime }" pattern="z"/><br>
Z : <fmt:formatDate value="${testTime }" pattern="Z"/><br>
X : <fmt:formatDate value="${testTime }" pattern="X"/><br>


<hr>

<!-- 가준: 현재시간 -->
<!-- 시간 1: 2020-06-01 10:43:23 -->
<!-- 시간 2 :2020-05-12 15:13:57 -->

<!-- jstl이용해서 현재시간과 비교해서 -->
<!-- 기준날짜와 같은 날이면 시:분 으로 출력 -->
<!-- 기준날짜보다 이전 날이면 연-월-일 로 출력 -->


<c:set var="nowtest" value="<%=new Date() %>"/>
현재시간 : <fmt:formatDate value="${nowtest }" pattern="yyyy-MM-dd" />
<fmt:formatDate value="${nowtest }" pattern="HH:mm:ss" />

<!-- 그래고리안 -->

<c:set var="time1" 
	value="<%=new GregorianCalendar(2020,5,1,10,43,23).getTime() %>"/>

<c:set var="time2" 
	value="<%=new GregorianCalendar(2020,5,12,15,13,57).getTime() %>" />
	
	
<!-- 현재 -->
<fmt:formatDate value="${nowtest }" pattern="yyyy-MM-dd" var="tt" />
tt : ${tt }<br>
<!-- 그래고리안이용 -->
<fmt:formatDate value="${time1 }" pattern="yyyy-MM-dd" var="gt_tt"/>
gt : ${gt_tt }<br>

<fmt:formatDate value="${time2 }" pattern="yyyy-MM-dd" var="gt_tt2"/>
gt : ${gt_tt2 }<br>

<c:if test="${tt eq gt_tt  }">
	같으면 : 시  : 분 출력1 :<fmt:formatDate value="${nowtest }" pattern="HH:mm"/>
</c:if>

<!-- 같으면 시간 출력 -->
<c:if test="${tt < gt_tt }">
	시:분 출력<fmt:formatDate value="${nowtest }" pattern="HH:mm"/>
</c:if>

<c:choose>

<!-- 	이전날짜 -->
	<c:when test="${tt lt gt_tt2 }">
		<fmt:formatDate value="${nowtest }" pattern="yyyy-MM-dd"/>
	</c:when>

</c:choose>

</body>
</html>

















