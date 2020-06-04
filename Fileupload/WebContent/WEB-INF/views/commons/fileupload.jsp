<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>

<h1>파일 업로드 form</h1>
<h3>Commons Fileuploads</h3>
<hr>

<!-- commons/fileupload 쪽으로 -->
<!-- <form action="/commons/fileupload" method="post" -->
<!--  enctype="multipart/form-data"> -->

<form action="/cos/fileupload" method="post"
 enctype="multipart/form-data">
<!-- enctype="application/x-www-form-urlenoded"> -->

<label>제목  : <input type="text" name="title" /></label><br>
<label>데이터1  : <input type="text" name="data1" /></label><br>
<label>데이터2 : <input type="text" name="data2" /></label><br>

<label>파일 : <input type="file" name="upfile" /></label><br>

<button>전송</button>
</form>



</body>
</html>
