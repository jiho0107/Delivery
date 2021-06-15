<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫 메인 페이지</title>
<style type="text/css">
	@font-face{
		font-family: "을지로체";
		src: url("/Delivery/fonts/BMEULJIROTTF.ttf");
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	#logo{
		font-family:"을지로체";
		font-size: 100px;
		color:#39deed;
		text-align:center;
		margin:50px auto;
	}
	button{
		font-family:"한나체air";
		font-size : 30px;
		width:200px;
	}
	img{
		width:200px;
	}
	#a{
		width:200px;
 		margin:30px auto;  
	}
</style>
</head>
<body>
	<div id="logo">배달<br>천국</div>
	<div id="a">
		<img src="/Delivery/img/delivery_logo.jpg">
		<p>
		<div class="button"><a href="/Delivery/login.jsp"><button>로그인</button></a></div><p>
		<div class="button"><a href="/Delivery/join.jsp"><button>회원가입</button></a></div>
	</div>
</body>
</html>