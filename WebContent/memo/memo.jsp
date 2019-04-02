<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.js">
</script>
<script>
$(function() {
	$.ajax({
		url: "/jsp01/memo_servlet/memo_list.do",
		success: function(result) {	// 콜백함수, 결과텍스트를 div에 출력
			$("#div1").html(result);
		}
	});
});

</script>
</head>
<body>
	<h2>한줄메모장</h2>
	<div id="div1"></div>
</body>
</html>