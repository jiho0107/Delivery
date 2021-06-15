
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="delivery.vo.OrderVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역목록</title>
<style type="text/css">
	body{
		background-color:#b0f4f5;
	}
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
	img{
		width:150px;
	}
	table{
		border-collapse : collapse;
	}
	#title{
		font-family:"도현체";
		font-size:35px;
	}
	#id{
		font-size:60px;
		color:#5c5952;
	}
	#order{
		color:#fc7d4e;
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
		font-size:25px;
	}
	#noOrder{
		font-family:"한나체";
		font-size:25px;
	}
	#container{
		width:600px;
		margin: 100px auto;
		text-align:center;
	}
	th,td{
		padding:5px;
	}
</style>
</head>
<body>
	<div id="container">
		<img src="/Delivery/img/order.png">
		<% String id = (String)request.getSession().getAttribute("id");%>
		<div id="title"><b id="id"><%=id %></b> 님의 <span id="order">주문내역</span></div>
		<%
		ArrayList<OrderVO> lists = (ArrayList<OrderVO>)request.getAttribute("lists");
		OrderVO list = null;
		if(!lists.isEmpty())
		{%>
			<table border="1" width=800px>
				<tr>
					<th>주문번호</th><th>주문제품</th><th>수량</th><th>금액</th><th>주문일자</th>
				</tr>
				<% for(int i=0; i < lists.size(); i++){
					list = lists.get(i);%>
					<tr>
						<td><%=list.getOId() %></td>
						<td><%=list.getPName() %></td>
						<td><%=list.getCount() %></td>
						<td><%=list.getTotalSum() %></td>
						<td><%=list.getDate() %></td>
					</tr>
				<% }%>
			</table><p>
		<%}else{%>
			<div id="noOrder">주문내역이 존재하지 않습니다.</div><p>
			<%}%>
		<a href="/Delivery/home.jsp"><button>홈</button></a>	
	</div>
</body>
</html>