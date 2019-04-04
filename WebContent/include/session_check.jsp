<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 세션값 조회
String userid = (String)session.getAttribute("userid");
// 세션값이 null이면(로그인하지 않은 사용자)
if(userid == null) {
%>
	<script>
		alert("로그인한 사용자만 사용가능한 화면입니다.");
		location.href="login.jsp";
	</script>
<%
}
%>

