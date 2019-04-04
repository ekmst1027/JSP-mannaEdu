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
// request 영역에 변수 저장 setAttribute(변수명, 값)
/* request.setAttribute("id", "kim");
request.setAttribute("name", "김철수"); */
session.setAttribute("id", "kim");
session.setAttribute("name", "김철수");
/* RequestDispatcher rd = request.getRequestDispatcher("forwardTo.jsp");
rd.forward(request, response); */
response.sendRedirect("forwardTo.jsp");
%>
<%-- <jsp:forward page="forwardTo.jsp"></jsp:forward> --%>
</body>
</html>