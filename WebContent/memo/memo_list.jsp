<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="memo.MemoVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<MemoVO> items = (List<MemoVO>)request.getAttribute("list");
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>메모</th>
		<th>날짜</th>
	</tr>
<% for(MemoVO vo : items) { %>
	<tr>
		<td><%=vo.getIdx() %></td>
		<td><%=vo.getWriter() %></td>
		<td><%=vo.getMemo() %></td>
		<td><%=vo.getPost_date() %></td>
	</tr>
<% } %>
</table>
</body>
</html>