<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타입별 가게목록</title>
<style type="text/css">
	body{
		background-color:#b0f4f5;
	}
	@font-face{
		font-family: "한나체air";
		src: url("/Delivery/fonts/BMHANNAAir_ttf.ttf");
	}
	@font-face{
		font-family: "주아체";
		src: url("/Delivery/fonts/BMJUA_ttf.ttf");
	}
	#list{
		text-decoration:none;
		font-family:"한나체air";
		font-size:30px;
		color:black;
	}
	#noResult{
		font-family:"주아체";
		font-size:50px;
	}
	button{
		font-family:"한나체air";
		font-size:25px;
	}
	.container{
		width:500px;
		margin: 30px auto;
		text-align:center;
	}
	#list:hover{
		color:#4596ed;
	}
</style>
</head>
<body>
	<%
		ArrayList<String> lists = (ArrayList<String>)request.getAttribute("lists");
		String list;
		if(!lists.isEmpty())
		{
			for(int i=0; i < lists.size(); i++){
				list = lists.get(i); %>
				<div class="container">
					<div><a href="showItems.do?store=<%=list%>" id="list"><b><%= list%></b></a></div><p>
			<% }
		}else{%>
					<div id="noResult">이 카테고리의 음식점이 존재하지 않습니다.</div> <p>
		<% }%>
					<a href="/Delivery/home.jsp"><button>홈</button></a>
				</div>
</body>
</html>