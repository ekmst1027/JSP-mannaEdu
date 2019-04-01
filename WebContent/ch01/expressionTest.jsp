<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// 스크립틀릿
String[] str = {"jsp", "java", "html", "javascript"};
// String[] str = null;
%>
<ul>
<%
if(str != null) {
	for (String s : str) { %>
		<li><%=s %></li>	<!-- 표현식 -->
	<% 
	}	// for
} else {
	out.println("내용이 없습니다.");
}
%>
</ul>
</body>
</html>