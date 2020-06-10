<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax_03</title>
<script type="text/javascript" src="/resources/js/httpRequest.js"></script>

<script type="text/javascript">

function ajaxToServer(){
	
	console.log("ajaxToServer called")
	
	//전달 파라미터 준비
	var params = "username = " + document.f.username.value;
	console.log(params);
	
	//ajax 요청
	sendRequest("POST","/ajax/ajax_03_ok.jsp",params,ajaxFromServer);

}

//서버로부터 온 AJAX 응답을 처리하는 함수
function ajaxFromServer() {
	if(httpRequest.readyState == 4){ //readyState 4 done 응답완료
		if(httpRequest.status == 200){ //ok
			console.log("정상");
			
			console.log("서버의 응답 " +httpRequest.responseText);
		} else{
			console.log("ajax요청");
		}
	}
	
}
</script>

</head>
<body>

<h1>ajax 03</h1>
<hr>

<form name="f">
	<input type="text" name="username" />
	<button type="button" onclick="ajaxToServer();">입력</button>
	
</form>

</body>
</html>
