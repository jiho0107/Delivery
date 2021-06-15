<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<style type="text/css">
	@font-face{
		font-family: "연성체";
		src: url("/Delivery/fonts/BMYEONSUNG_ttf.ttf");
	}
	@font-face{
		font-family: "주아체";
		src: url("/Delivery/fonts/BMJUA_ttf.ttf");
	}
	body{
		background-color:#b0f4f5;
	}
	#title1{
		font-family:"연성체";
		font-size:70px;
		color:#2b5fcf;
	}
	#title2 {
		font-family:"주아체";
		font-size: 50px;
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
		<div id="title1"><b>로그아웃</b></div><br><div id="title2">하시겠습니까?</div><p>
		<a href="/Delivery/result/logoutResult.jsp"><button>로그아웃</button></a><p>
		<a href="/Delivery/home.jsp"><button>홈</button></a>
	</div>
</body>  
</html>  