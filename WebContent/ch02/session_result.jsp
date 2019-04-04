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
<%
// session.getAttribute("변수명") : 세션 변수값 조회
String name = (String) session.getAttribute("name");
int age = (Integer) session.getAttribute("age");
%>
이름 : <%=name %><br>
나이 : <%=age %><br>
세션 아이디 : <%=session.getId() %><br>
<a href="session_result2.jsp">세션 확인</a>
<hr>
<h2>request 정보</h2>
이름 : <%=request.getAttribute("name") %><br>
나이 : <%=request.getAttribute("age") %><br>
</body>
</html>