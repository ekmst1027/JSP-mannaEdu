<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<h2>request 객체의 method</h2>
	<%
	// 일부 header만 확인
	String[] names = {"프로토클", "서버이름", "method", "컨텍스트", "uri", "url", "ip" };
	String[] values = {request.getProtocol(),
			request.getServerName(),
			request.getMethod(),
			request.getContextPath(),
			request.getRequestURI(),
			request.getRequestURL().toString(),
			request.getRemoteAddr() };
	for(int i = 0; i < names.length; i++) {
		out.println(names[i] + ":" + values[i] + "<br>");
	}
		
	// 모든 header 확인
	System.out.println("ip : " + request.getRemoteAddr());
	// http header 정보 확인
	Enumeration<String> en = request.getHeaderNames();	// 반복 객체 사용
	String headerName = "";
	String headerValue = "";
	out.println("<h2>헤더 정보</h2>");
	while(en.hasMoreElements()) {	// 다음 요소가 있으면
		headerName = en.nextElement();	// 다음 요소
		headerValue = request.getHeader(headerName);
		out.println(headerName + ":" + headerValue + "<br>");
		
	}
	%>
</body>
</html>