<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt:formatNumber</title>
</head>
<body>

<h1>fmt:formatNumber</h1>
<hr>

<fmt:formatNumber value="1234567890" /><br>
<fmt:formatNumber value="1234567890" type="number" /><br>
<fmt:formatNumber value="1234567890" type="currency" /><br>
<fmt:formatNumber value="1234567890" type="percent" /><br>

<hr>
<fmt:formatNumber value="1234567890" type="number"
	groupingUsed="false" /><br>
	
<hr>
<fmt:formatNumber value="1234567890" type="currency"
currencySymbol="$" />

<hr>
<!-- minFractionDigits: 소수점 자릿수 지정 -->
<fmt:formatNumber value="1234567890" type="currency"
currencySymbol="$" minFractionDigits="2" />

<hr>
<!-- minIntegerDigits : 정수 자릿수 지정 -->
<fmt:formatNumber value="7" type="currency"
currencySymbol="$" minIntegerDigits="5" />

<hr>
<fmt:formatNumber value="123456.60" type="currency"
currencyCode="USD" />

<hr>
<fmt:formatNumber value="123456.60" type="currency"
currencyCode="JPY" />

<hr>
<!-- 소수점 첫째자리까지 반올림해서 보여줌 -->
<fmt:formatNumber value="12345.67890" type="number"
 pattern="#####.#" />
 
 
<hr>
<fmt:formatNumber value="12345.67890" type="number"
 pattern="###,###,###.###" />
 
 <hr>
<fmt:formatNumber value="1234512345.67890" type="number"
 pattern="#,###.###" />

<hr>
<fmt:formatNumber value="12345.67890" type="number"
 pattern="0000000000.0000000000" /> 

<hr>
<!-- 이패턴을 많이 쓸거같아요~ -->
<fmt:formatNumber value="12345.67890" type="number"
 pattern="#,###.00" /> 


<hr>
<fmt:formatNumber value="12345.6" type="number"
 pattern="#,###.00" /> 
 
<hr>
<fmt:formatNumber value="12345.6" type="number"
 pattern="USD#,###.00" /> 
 
  
</body>
</html>













