<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	@font-face{
		font-family: "한나체";
		src: url("/Delivery/fonts/BMHANNA_11yrs_ttf.ttf");
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	body {
		background-color : #b0f4f5;
	}
	#title{
		font-family:"한나체";
		font-size: 50px;
		color:white;
		margin:20px auto;
	}
	input {
		font-family:"한나체air";
		font-size:20px;
		color:black;
	}
	
	#all{
		width:600px;
        margin:10px auto;
        text-align:center;
	}
</style>
</head>
<body>
	<div id="all">
		<img src="/Delivery/img/login_logo.png">
		<div id="title">LOGIN</div>
		<form action="login.do" method="post">
			<input type="text" name="id" placeholder="아이디" maxlength="10"><p>
			<input type="password" name="pwd" placeholder="비밀번호" maxlength="20"><p>
			<input type="submit" value="로그인">
		</form>
	</div>
</body>
</html>