<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="n1" value="${param.num1 }"></c:set>
<c:set var="n2" value="${param.num2 }"></c:set>
<c:set var="op" value="${param.oper }"></c:set>

<c:choose>
	<c:when test="${op eq 'add' }" >
		${n1 } + ${n2 } = ${n1+n2 }<br>
	</c:when>
	
	<c:when test="${op eq 'sub' }" >
		${n1 } - ${n2 } = ${n1-n2 }<br>
	</c:when>
	
	<c:when test="${op eq 'mul' }" >
		${n1 } * ${n2 } = ${n1*n2 }<br>
	</c:when>
	
	<c:when test="${op eq 'div' }" >
		${n1 } / ${n2 } = 
		<fmt:formatNumber pattern = "0.00" value ="${n1/n2 }" /><br>

	</c:when>			

</c:choose>
