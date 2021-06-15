<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 선택</title>
<style type="text/css">
	body{
		background-color:#b0f4f5;
	}
	@font-face{
		font-family: "한나체";
		src: url("/Delivery/fonts/BMHANNA_11yrs_ttf.ttf");
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	#add{
		font-family:"한나체air";
		font-size:20px;
	}
	#front{
		font-family:"한나체";
		font-size:30px;
	}
	#back,#count{
		font-family:"한나체air";
		font-size:25px;
	}
	#container{
		width:600px;
		margin:100px auto;
		text-align:center;
	}
	#add:hover{
		background-color:#ebe83f;
	}
</style>
</head>
<body>
	<%
		String no = request.getParameter("no");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String img = request.getParameter("img");
	%>
	<div id="container">
		<form action="add.do" method="post">
			<img src="<%=img%>"><p>
			<span id="front">제품명 :</span> <span id="back"><%= name %></span><br>
			<span id="front">가격 :</span> <span id="back"><%= price %> 원</span><br>
			<span id="front">수량</span> <input type="number" min="1" name="count" value="1" id="count"><p>
			<input type="hidden" name="no" value="<%=no%>">
			<input type="submit" value="담기" id="add">
		</form>
	</div>
</body>
</html>