<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 완료</title>
<style type="text/css">
	@font-face{
		font-family: "주아체";
		src: url("/Delivery/fonts/BMJUA_ttf.ttf");
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	body{
		background-color:#b0f4f5;
	}
	div{
		font-family:"주아체";
		font-size:50px;
	}
	button{
		font-family:"한나체air";
		font-size:20px;
	}
	#logout{
		font-size:55px;
		color:#4ba8eb;
	}
	#container{
		width:600px;
		margin: 200px auto;
		text-align:center;
	}
</style>
</head>
<body>
	<div id="container">
		<div><b id="logout">로그아웃</b><br>되었습니다!</div>
		<%
			session.invalidate();
		%>
		<a href="/Delivery/index.jsp"><button>처음으로</button></a>
	</div>
</body>
</html>