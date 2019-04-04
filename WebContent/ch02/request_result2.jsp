<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
</script>
</head>
<body>
<!-- EL(Expression Language, 표현언어) --> 
<%-- ${식 or 변수 } --%> 
이름 : ${map.name }<br>
나이 : ${map.age }<br>
성별 : ${map.gender }<br>
취미 : ${map.hobby }<br> 
</body>
</html>