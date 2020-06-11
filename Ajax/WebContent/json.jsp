<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

var json = {"a":1, "b":2, "c":"cherry","d":true, "e":["1","2","3"]};
console.log(json);

console.log(json.e)
console.log(json.c)


console.log("----------------------------")

//json 객체  -> json 텍스트
var jsonText = JSON.stringify(json);
console.log(jsonText);

</script>
</head>
<body>

</body>
</html>
