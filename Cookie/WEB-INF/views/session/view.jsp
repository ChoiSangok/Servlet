<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 확인</title>
<script>
function del() {
	location.href = "/session/delete";
}
</script>
</head>
<body>

<h1>세션 확인</h1>
<hr>

test : ${test }<br>

<hr>

<a href="/session/create"><button>세션 생성</button></a>
<button onclick="del();">세션 삭제</button>

</body>
</html>






