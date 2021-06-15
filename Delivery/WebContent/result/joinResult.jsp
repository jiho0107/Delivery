<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
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
		font-size:50px;
	}
	button{
		font-family:"주아체air";
		font-size:20px;
	}
	span{
		color:#12a3e6;
	}
	#container{
		width:600px;
		margin:200px auto;
		text-align:center;
	}
</style>
</head>
<body>
	<div id="container">
		<div id="title"><span>회원가입</span>이 <span>완료</span>되었습니다!</div><p>
		<a href="/Delivery/login.jsp"><button>로그인</button></a><p>
		<a href="/Delivery/index.jsp"><button>처음으로</button></a>
	</div>
</body>
</html>