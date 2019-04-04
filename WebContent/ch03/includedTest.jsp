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
// 컨텍스트 패스(사이트의 식별자)
String path = request.getContextPath();
%>
포함되는 페이지 includedTest.jsp입니다.
<%-- <b><%=request.getParameter("name") %>님 환영합니다.</b> --%>
<b>${param.name }님 환영합니다.</b>
<hr> <!-- 수평선 -->
</body>
</html>