<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="delivery.vo.CartVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록</title>
<style type="text/css">
	@font-face{
		font-family: "도현체";
		src: url("/Delivery/fonts/BMDOHYEON_ttf.ttf");
	}
	@font-face{
		font-family: "한나체";
		src: url("/Delivery/fonts/BMHANNA_11yrs_ttf.ttf");
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	#title{
		font-family:"도현체";
		font-size:35px;
	}
	body{
		background-color:#b0f4f5;
	}
	table{
		border-collapse:collapse;
	}
	#id{
		font-size:60px;
		color:#5c5952;
	}
	#bucket{
		color:#a86a05;
	}
	th{
		font-family:"한나체";
		font-size:25px;
		background-color:#e6e2da;
	}
	td{
		font-family:"한나체air";
		font-size:20px;
		text-align:center;
	}
	button{
		font-family:"한나체air";
		font-size:20px;
	}
	#total{
		font-size:25px;
		color:#6c41d1;
	}
	img{
		width:150px;
	}
	button{
		font-family:"한나체air";
		font-size:25px;
	}
	#noList{
		font-family:"한나체";
		font-size:25px;
	}
	#delete{
		color:blue;
	}
	#delete:hover{
		color:red;
	}
	#container{
		width:600px;
		margin: 100px auto;
		text-align:center;
	}
	th,td{
		padding:5px;
	}
	#order:hover{
		background-color:#ebe83f;
	}
</style>
</head>
<body>
	<div id="container">
		<img src="/Delivery/img/cart.png">
		<%
		ArrayList<CartVO> lists = (ArrayList<CartVO>)request.getAttribute("lists");
		CartVO list = null;
		int totalSum = 0;
		String id = (String)request.getSession().getAttribute("id");
		%>
		<div id="title"><span id="id"><b><%=id %></b></span> 님의 <span id="bucket">장바구니</span></div><p>
			<%
			if(!lists.isEmpty()){%>
				<table border="1" width="800">
				<tr><th>제품</th><th>가게</th><th>수량</th><th>금액</th><th>취소</th></tr>
				<% for(int i=0 ; i < lists.size(); i++){
					list = lists.get(i);
					totalSum += list.getSum();
					%>
						<tr>
							<td><%=list.getPName()%></td>
							<td><%=list.getPStore()%></td>
							<td><%=list.getCount()%></td>
							<td><%=list.getSum()%></td>
							<td><a href="delete.do?cNo=<%=list.getCNo()%>" id="delete">삭제</a></td>
						</tr>
				<% }%>
						<tr>
							<td colspan="5">장바구니 금액 : <span id="total"><b><%=totalSum %> 원</b></span></td>
						</tr>
					</table><p>
				<a href="/Delivery/order.jsp?total=<%=totalSum%>"><button id="order"><b>주문하기</b></button></a>
			<% }else{%>
				<div id="noList">장바구니 목록이 비었습니다.</div>
				<p>
			<%}%>
			<a href="/Delivery/home.jsp"><button>홈</button></a>
		</div>
</body>
</html>