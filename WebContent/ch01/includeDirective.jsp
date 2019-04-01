<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- color.jspf 코드를 현재 페이지에 포함시킴(변수는 공유됨) -->
<%@ include file="color.jspf" %>
<%@ page import="config.Constants" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: <%=bodyback_c%>
}
</style>
</head>
<body>
	<!-- test.jsp 페이지의 실행 결과가 출력됨, 변수 공유는 안됨 -->
	<jsp:include page="test.jsp"></jsp:include>
	<h2>최대값 : <%=Constants.MAX %></h2>
</body>
</html>