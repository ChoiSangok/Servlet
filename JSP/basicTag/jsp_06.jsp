<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/basicTag/header.jsp" %>

<style type="text/css">
 /* 해당 페이지에만 적용될 stylesheet 관리 */
/*  selector 관리 */

#myDiv h1{
	color:tomato;
}

</style>
<script type="text/javascript">
//해당 페이지에만 적용될 script 관리

</script>

<!-- 주의사항 -->

<!-- header.jsp 에서 추가한 JS, CSS 와 충돌나지 않도록 해야 한다 -->
<!-- 특히 라이브러리(jQuery 등) 관리에 신경쓸 것 -->

<<script type="text/javascript"
 src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<div id="myDiv">
	<h1>여기는 또 다른 페이지의 내용</h1>
	<h3>contents 영역이 됩니다</h3>
</div>

<%@ include file="/basicTag/footer.jsp" %>
