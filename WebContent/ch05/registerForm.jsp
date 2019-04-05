<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<form method="post" action="registerPro.jsp">
		<table>
			<tr>
				<td>아이디</td>
				<td><input name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="passwd"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="확인"></td>
			</tr>
		</table>
	</form>
</body>
</html>