<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<!-- 자바빈을 생성하고 폼에서 입력된 값을 변수에 입력 -->
	<jsp:useBean id="registerBean" class="ch05.RegisterBean">
		<jsp:setProperty name="registerBean" property="*" />
	</jsp:useBean>
	<%
	out.println("타임스탬프 : " + System.currentTimeMillis() + "<br>");
	out.println(new Timestamp(System.currentTimeMillis()) + "<br>");
	registerBean.setReg_date(new Timestamp(System.currentTimeMillis()));
	%>
	아이디 : <jsp:getProperty property="id" name="registerBean" /><br>
	비번 : <jsp:getProperty property="passwd" name="registerBean" /><br>
	이름 : <jsp:getProperty property="name" name="registerBean" /><br>
	가입일자 : <jsp:getProperty property="reg_date" name="registerBean" /><br>
	
</body>
</html>