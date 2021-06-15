<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>담기 완료</title>
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
		font-size: 60px;
	}
	#bucket{
		color:#a86a05;
		font-size:70px;
	}
	button{
		font-family:"한나체air";
		font-size:20px;
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
		<div id="title"><span id="bucket">장바구니</span>에 담았습니다.</div><p>
		<a href="javascript:history.go(-2);"><button>이전</button></a> 
		<a href="cartList.do"><button>장바구니 바로가기</button></a>
	</div>
</body>
</html>