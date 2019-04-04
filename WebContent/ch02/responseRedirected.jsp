<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// ...?name=김철수&age=20 
String name = request.getParameter("name");	// 파라미터 변수를 읽음
name = URLDecoder.decode(name, "utf-8");	// url decoding 과정
String age = request.getParameter("age");	// 파라미터 변수는 스트링만 가능
%>
이름 : <%=name %><br>
나이 : <%=age %><br>

<!-- EL(Expression Language, 표현언어) 방식 -->
<!-- param.변수 => request.getParameter("변수")와 같은 결과 -->
이름 : ${param.name}<br>	<!-- request.getParameter("name") -->
나이 : ${param.age }<br>	<!-- request.getParameter("age") -->
</body>
</html>