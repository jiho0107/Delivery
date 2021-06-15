<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료</title>
<style type="text/css">
	body{
		background-color:#b0f4f5;
	}
	@font-face{
		font-family: "주아체";
		src: url("/Delivery/fonts/BMJUA_ttf.ttf");
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	#title{
		font-family:"주아체";
		font-size:70px;
		color:#2f95ed;
	}
	button{
		font-family:"한나체air";
		font-size:30px;
	}
	img{
		width:150px;
	}
	#container{
		width:600px;
		margin:100px auto;
		text-align:center;
	}
</style>
</head>
<body>
	<div id="container">
		<img src="/Delivery/img/delivery_ing.png">
		<div id="title">주문이 완료되었습니다.</div><p>
		<a href="orderList.do"><button>주문내역</button></a><p>
		<a href="/Delivery/home.jsp"><button>홈</button></a>
	</div>
</body>
</html>