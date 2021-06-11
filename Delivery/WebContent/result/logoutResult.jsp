<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 완료</title>
</head>
<body>
	<h2>로그아웃<br>되었습니다!</h2><p>
	<%
		session.invalidate();
	%>
	<a href="/Delivery/home.jsp"><button>홈</button></a>
</body>
</html>