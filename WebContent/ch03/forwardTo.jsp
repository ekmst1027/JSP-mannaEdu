<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>forwardTo.jsp 페이지입니다.</h2>
<%-- id : <%=request.getAttribute("id") %><br>
name : <%=request.getAttribute("name") %><br> --%>
id : <%=session.getAttribute("id") %><br>
name : <%=session.getAttribute("name") %><br>

id : ${id }<br>
name : ${name }<br>
</body>
</html>