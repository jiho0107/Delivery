<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="delivery.vo.ProductVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식점 메뉴 목록</title>
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
	#noResult{
		font-family:"주아체";
		font-size:50px;
	}
	button{
		font-family:"한나체air";
		font-size:20px;
	}
	a{
		text-decoration:none;
	}
	img{
		width:200px;
	}
	#name{
		font-size:30px;
		color:black;
	}
	#price{
		font-size:25px;
		color:black;
	}
	#container{
		width:600px;
		margin:30px auto;
		text-align:center;
		padding-top:60px;
	}
	#item{
		border-bottom:1px dotted black;
	}
	#name:hover{
		color:#4596ed;
	}
</style>
</head>
<body>
	<%
		ArrayList<ProductVO> lists = (ArrayList<ProductVO>)request.getAttribute("lists");
		ProductVO list;
		if(!lists.isEmpty()){
			for(int i=0; i < lists.size(); i++){
				list = lists.get(i);%>
				<div id="container">
					<div id="item">
						<a href="/Delivery/item.jsp?no=<%=list.getNo()%>&
						name=<%=list.getName()%>&price=<%=list.getPrice()%>&img=<%=list.getImg()%>">
						<div><img src="<%=list.getImg()%>"><br><span id="name"><b><%= list.getName() %></b></span><br>
						<span id="price"><%=list.getPrice() %>원</span></div></a><br>
					</div>
			<%}
		}else{%>
				<div id="noResult">이 음식점에 등록된 메뉴가 없습니다.</div>
				<a href="javascript:history.go(-1);"><button>이전</button></a> 
			</div>
		<% }%>
</body>
</html>