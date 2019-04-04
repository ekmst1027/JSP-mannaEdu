<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<!-- session_result2.jsp -->
이름 : <%=session.getAttribute("name") %><br>
나이 : <%=session.getAttribute("age") %><br>
<hr>
<h2>request 정보</h2>
이름 : <%=request.getAttribute("name") %><br>
나이 : <%=request.getAttribute("age") %><br>
</body>
</html>