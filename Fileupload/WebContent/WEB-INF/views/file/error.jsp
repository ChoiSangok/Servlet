<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error jsp</title>
</head>
<body>

<h1>에러 페이지</h1>
<hr>

<h3>${message }</h3> <!-- EL -->


<a href="/file/list">파일 목록으로 가기</a>

<%--<a>태그의 href속성에 url이 아닌 javascript코드를 넣고 싶으면 --%>
<%-- 접두어 javascript: 를 적으면 된다ㅑ--%>

<a href="javascript:history.go(-1);">이전 페이지로 이동</a>


</body>
</html>
