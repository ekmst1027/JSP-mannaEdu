<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>점수 입력</h2>
	<form method="post" action="<%=request.getContextPath() %>/ch03_servlet/point.do">
		이름 <input type="text" name="name"><br>
		국어 <input type="text" name="kor"><br>
		영어 <input type="text" name="eng"><br>
		수학 <input type="text" name="mat"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>