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
<%
request.setCharacterEncoding("utf-8");
/* String name = request.getParameter("name");
String pageName = request.getParameter("pageName"); */
%>
<%-- <%=name %>님 환영합니다.<br>
포함하는 페이지는 <%=pageName %>입니다.<br> --%>
<%-- request.getParameter("변수명") => ${param.변수명 } --%>
${param.name }님 환영합니다.<br>
포함하는 페이지는 ${param.pageName }입니다.<br>
<!-- 액션태그
jsp:로 시작하는 태그들, 자바코드를 줄이기 위해 사용
 -->
 
<%-- <jsp:include page="<%=pageName %>"></jsp:include> --%>
<!-- 액션태그로 include할 경우 변수는 공유할 수 없음 -->

<%@ include file="includedTest.jsp" %>
<%=path %>	<!-- 1개의 클래스로 합쳐져서 컴파일을 하므로 변수 공유 가능 -->

</body>
</html>