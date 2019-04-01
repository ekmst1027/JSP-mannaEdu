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
int result =(int)request.getAttribute("result");
out.println("결과 : " + result);
%>
</body>
</html>