<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script>
</script>
</head>
<body>
<!-- response : 응답객체, response.sendRedirect("주소") - 페이지 이동 ?변수명=값&변수명=값 -->
<%
// String name = "김철수";
String name = URLEncoder.encode("김철수", "utf-8");
response.sendRedirect("responseRedirected.jsp?name="+ name + "&age=20");
%>
</body>
</html>