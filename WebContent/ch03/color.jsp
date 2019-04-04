<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 컨트롤러에서 넘겨준 변수값을 읽음
Map<String, Object> map = (Map<String, Object>) request.getAttribute("map");
// map에 지정된 값들을 읽음
String name = (String)map.get("name");
String color = (String)map.get("color");
String message = (String)map.get("message");
%>
<%=name %>님이 좋아하는 색상은
<span style="color:<%=color %>"><%=color %></span>이고
<%=message %>
<br>
<%-- ${map.name }님이 좋아하는 색상은
<span style="color:${map.color}">${map.color }</span>이고
${map.message } --%>
</body>
</html>