<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/httpRequest.js"></script>
<script type="text/javascript">
function send(){
   //전달 파라미터 구성
   var n= username.value;
   var c= content.value;
   
   var params="name="+n+"&content="+c;
   
   //url구성
   var url="/ajax/ajax_05_ok.jsp";
   
   //AJAX요청 전송 코드
   sendRequest("POST", url, params, callback);
}
//AJAX 요청 처리 콜백함수
function callback(){
   if(httpRequest.readyState ==4){ //XHR  DONE
      if(httpRequest.status ==200){
         //정상응답 처리함수
         appendResult();
      }else{
         //에러
      }
   }   
}
// 결과 <div>를 추가해주는함수
function appendResult(){
	
	console.log("apapendResult called")
	
	console.log("----responseText----")
	console.log(httpRequest.responseText)
	
	console.log("----responseXML----")
	console.log(httpRequest.responseXML)
	
	
	//XML 데이터를 추ㅜㄹ하기(파싱)
	// XML Document 객체에는 getElementById("idname")을 사용할 수 없다
	
	// getElementsByTagName("tagname")을 사용해야 한다
	
	// 응답받은 xml데이터
	var resultData = httpRequest.responseXML;
	console.log(resultData);
	
	//member태그 객체 얻기
	var member = resultData.getElementsByTagName("member");

	console.log(member[0]);
	

	//record 태그 객체 얻기 - 배열로 반환함
	var record = member[0].getElementsByTagName("record");
	console.log(record[0]);
	
	var name=record[0].getElementsByTagName("name")[0];
	var content = record[0].getElementsByTagName("content")[0];
	
	console.log("---name---");
	console.log(name)
	
	console.log("---content---")
	console.log(content)
	
	//태그의 자식 텍스트 데이터 꺼내기
	var nameData = name.firstChild.nodeValue;
	var contentData = content.firstChild.nodeValue;
	
	console.log("----nameData----");
	console.log(nameData)
	console.log("----contentData----")
	console.log(contentData)
	
	//div#result에 <div> 추가하기
	result.innerHTML += "<div>" + nameData + "," + contentData + "</div>";
	
	
}
</script>
<title>Insert title here</title>
</head>
<body>
   <h1>AJAX_05</h1>
   <hr>
   <!-- 이름, <input>태그 , id="username" -->
   <!-- 내용, <input>태그 , id="contemt" -->
   
   <!-- 이름, 내용 두가지의 데이터를 ajax_04_ok.jsp로 전송 -->
   <!-- 전송한 데이터를 이용하여 응답데이터로 작성 -->
   
   <!-- 형식
      <div> 
         name:Alice
         contetn: 안녕하세요!
         
         
         ALice 님 안녕하세요   
    -->
   <!-- 응답받은 <div>데이터는 <button> 하단에 계속해서 추가되도록 만든다 -->
   
   <div>
      <label>이름 : <input type="text" id="username"></label><br>
      <label>내용 : <br><textarea id="content"></textarea></label><br>
      
      <button onclick="send();">전송</button>            
   </div>
   <div id="result"></div>
   
</body>
</html>
