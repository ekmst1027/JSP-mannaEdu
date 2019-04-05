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
<% request.setCharacterEncoding("utf-8"); %>

<!-- 	useBean id="참조변수명" class="자료형" -->
<!-- 	TestBean testBean = new TestBean(); -->
<!-- 	setProperty name = "빈의 id" property="변수명" -->
<!-- 	id => setId() -->
<!-- 	pwd => setPwd() -->
<!-- 	getProperty property="필드명" name="빈의 id" /> -->
	
	<jsp:useBean id="testBean" class="ch05.TestBean">
		<jsp:setProperty name="testBean" property="*" />
	</jsp:useBean>
	<!-- setter가 호출됨 -->
	아이디 : <jsp:getProperty property="id" name="testBean" /><br>
	비번 : <jsp:getProperty property="pwd" name="testBean" /><br>
	이름 : <jsp:getProperty property="name" name="testBean" /><br>
</body>
</html>