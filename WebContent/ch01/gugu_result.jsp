<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// request.setAttribute("변수명", 값)
// (자료형)request.getAttribute("변수명") : 서블릿에서 넘어온 값을 읽음
String result = (String)request.getAttribute("result");
%>
<h2>실행 결과</h2>
<%=result %>
</body>
</html>