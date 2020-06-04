<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cos Fileupload</title>
</head>
<body>
<h1>파일 업로드 form</h1>
<h1>Cos Fileupload</h1>
<hr>
<form action="/cos/fileupload" method="post"
 enctype="multipart/form-data">

<label>제목 :<input type="text" name="title" /></label> <br>
<label>닉네임 : <input type="text" name="nick" /></label><br>

<label>파일 : <input type="file" name="upfile" /></label><br><br>

<button>전송</button>

 
</form>
</body>
</html>

