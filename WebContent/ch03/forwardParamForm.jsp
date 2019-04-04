<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<%
	String path = request.getContextPath();
	%>
	<form method="post" action="<%=path %>/ch03_servlet/forward.do">
		이름 : <input name="name"><br>
		색상 : 
		<select name="color">
			<option value="blue">파랑</option>
			<option value="green">초록</option>
			<option value="red">빨강</option>
		</select>
		<br>
		<input type="submit" value="확인">
	</form>
</body>
</html>