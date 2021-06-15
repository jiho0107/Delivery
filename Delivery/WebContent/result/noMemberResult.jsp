<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보존재안함</title>
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
	div{
		font-family:"주아체";
		font-size:50px;
	}
	button{
		font-family:"한나체air";
		font-size:20px;
	}
	span{
		color:#5c5952;
	}
</style>
</head>
<body>
	<div><span>아이디</span> 또는 <span>비밀번호</span>가 잘못되었습니다.</div><p>
	<a href="/Delivery/login.jsp"><button>로그인</button></a><p>
	<a href="/Delivery/index.jsp"><button>메인</button></a>
</body>
</html>