<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
$(function() {
	$("#btnLogout").click(function() {
		// 컨트롤러로 넘어감
		location.href = "<%=request.getContextPath()%>/ch02_servlet/logout.do";
	});
});
</script>
</head>
<body>
<!-- 세션 체크 페이지를 include -->
<%@ include file="../include/session_check.jsp" %>

<!-- 세션에 저장된 값을 불러옴 -->
<h2><%=session.getAttribute("message") %></h2>
<h2>접속 중인 아이디 : <%=session.getAttribute("userid") %></h2>

<button type="button" id="btnLogout">로그아웃</button>

</body>
</html>