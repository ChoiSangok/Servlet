<%@page import="dto.UploadFile"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<% List<UploadFile> uploadlist = (List) request.getAttribute("list"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>전체 파일 출력하기</h1>


<table>
<tr>
	<th>이름</th>
	<th>원래이름</th>
	<th>바뀐이름</th>
</tr>

<% for(int i=0;i<uploadlist.size(); i++) { %>

<tr>

	
	<td><%=uploadlist.get(i).getFileno() %></td>
	<td><%=uploadlist.get(i).getOriginName() %></td>
	<td><%=uploadlist.get(i).getStoredName() %></td>
</tr>
<% } %>
	
<%-- <c:foreach items="${uploadlist }" var ="i"> --%>
<!-- <tr> -->
<%-- 	<td>${i.fileno }</td> --%>
<%-- 	<td>${i.originName }</td> --%>
<%-- 	<td>${i.storedName }</td> --%>
	
<!-- </tr> -->
<%-- </c:foreach> --%>

</table>





</body>
</html>
