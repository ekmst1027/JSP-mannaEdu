<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form method="post" action="<%=request.getContextPath() %>/ch01_servlet/while.do">
		곱해질 값 : <input name="number"><br>
		곱해질 횟수 : <input name="num"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>