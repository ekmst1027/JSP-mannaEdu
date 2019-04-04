<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="template.css" />
</head>
<body>
	<header>
		<!-- 시맨틱 태그 -->
		<jsp:include page="top.jsp"></jsp:include>
	</header>
	<div id="content">
		<section id="areaSub">
			<jsp:include page="left.jsp"></jsp:include>
		</section>
		<section id="areaMain">
			<jsp:include page='<%=request.getParameter("CONTENTPAGE") %>'></jsp:include>
		</section>
	</div>
	<footer>
		<jsp:include page="bottom.jsp"></jsp:include>
	</footer>
</body>
</html>