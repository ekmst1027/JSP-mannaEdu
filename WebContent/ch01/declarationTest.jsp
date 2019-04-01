<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="book.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
</script>
</head>
<body>
<%	// 스크립틀릿(scriptlet, 자바 코드 조각)
String str1 = "java";	// 지역변수
%>
<%!	// jsp 선언부
String str2 = "hello";	// 전역변수
String getStr2() {	// method 선
	return str2;
}
%>
<%=str1 %><br>
<%=str2 %><br>
<%=getStr2() %><br>

<%
BookDAO dao = new BookDAO();
ArrayList<BookVO> list = dao.bookList();
%>
<ul>
<% for(BookVO vo : list) { %>
	<li><%= vo.getTitle() %></li>
<% } %>
</ul>
</body>
</html>