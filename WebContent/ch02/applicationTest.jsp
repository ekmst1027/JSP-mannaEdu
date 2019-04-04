<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js">
</script>
<script>
</script>
</head>
<body>
<!-- applicationTest.jsp -->
<%
// 4가지 저장 영역
// pageContext: 현재 페이지
// request : 요청 + 응답 페이지
// session : 사용자 단위
// application : 서버 단위

// WAS(Web Application Server)의 정보
String info = application.getServerInfo();
application.log("WAS 정보 : " + info);

// 배포 디렉토리
String path = application.getRealPath("/");

// 콘솔창에 로그 출력
application.log("서비스 경로 : " + path);

// 변수 저장(모든 사용자가 공유하는 변수)
application.setAttribute("message", "hello");
%>
<a href="application_result.jsp">서버 변수 확인</a>
</body>
</html>