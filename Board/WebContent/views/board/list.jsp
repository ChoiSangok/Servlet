<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<div class="container">

<h1>게시글 상세보기</h1>
<hr>

<table class="table table-striped table-hover table-condensed">
<tr class="success">
	<th style="width: 10%;">글번호</th>
	<th style="width: 45%;">제목</th>
	<th style="width: 20%;">아이디</th>
	<th style="width: 10%;">조회수</th>
	<th style="width: 15%;">작성일</th>
</tr>
<c:forEach items="${boardList }" var="board">
<tr>
	<td>${board.boardno }</td>
	<td><a href="/board/view?boardno=${board.boardno }">${board.title }</a></td>
	<td>${board.id }</td>
	<td>${board.hit }</td>
	<td><fmt:formatDate value="${board.writtendate }" pattern="yyyy-MM-dd"/></td>
</tr>
</c:forEach>
</table>

<c:import url="/WEB-INF/views/layout/paging.jsp" />

</div><!-- div.container -->

<c:import url="/WEB-INF/views/layout/footer.jsp" />
