<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:catch</title>
</head>
<body>

<h1>c:catch</h1>
<hr>

전달파라미터 확인: ${param.id }<br>

<c:catch var="e">
<%	request.getParameter("id").equals("test"); %>
</c:catch>

<!-- empty 객체가 존재할때만 실행되거라 -->
<c:if test="${not empty e }">
발생한 예외 객체:${e }<br><br>

파라미터값이 없습니다 ! 확인하세요 !<br><br>
아이디가 입력되지 않았습니다<br><br>

<script type="text/javascript">
alert("아이디를입력하세요");

var res=prompt("아이디 입력 안하신거 알죵>?")
console.log(res)
</script>
</c:if>

</body>
</html>





