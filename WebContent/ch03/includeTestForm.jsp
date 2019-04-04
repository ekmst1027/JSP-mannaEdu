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
	<%-- jsp 액션 태그 <jsp: 로 시작하는 태그 --%>
	<form method="post" action="includeTest.jsp">
		이름 <input name="name"><br>
		포함할 페이지 : <input name="pageName" value="includedTest.jsp"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>