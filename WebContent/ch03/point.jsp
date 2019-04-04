<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>점수 계산 결과</h2>
	이름 : ${vo.name };
	국어 : ${vo.kor };
	영어 : ${vo.eng };
	수학 : ${vo.mat };
	총점 : ${vo.tot };
	평균 : ${vo.avg };
	
</body>
</html>