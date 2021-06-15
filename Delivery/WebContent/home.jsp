<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈 메뉴</title>
<style type="text/css">
	@font-face{
		font-family: "을지로체";
		src: url("/Delivery/fonts/BMEULJIROTTF.ttf");
	}
	@font-face{
		font-family: "주아체";
		src: url("/Delivery/fonts/BMJUA_ttf.ttf");
	}
	li{
		font-family:"주아체";
		font-size:30px;
		color:black;
	}
	body{
		background-color : #b0f4f5;
	}
	li{
		display:inline;
	}
	li a{
		text-decoration:none;
	}
	img{
		width:220px;
	}
	nav{  
	  float:right;   
	  width:900px;   
	  height:100px;     
	  padding-top:40px;  
	}
	table{
		width:60%;
		height:200px;
		margin:auto;
	}
	#topMenu{
		height:60px; 
	}
	#topMenu > li {
	  float:left;   
	  position: relative;  
	}
	#topMenu > li > a{
	  display:block;  
	  font-size:1.1em;
	  color:#1fa8f8; 
	  font-weight:600;  
	  padding:20px 60px;   
	}
	#topMenu > li > a:hover {
	  color:#fff;
	}
	#logo{
	float:left;   
	  width:250px;   
	  height:100px;   
	  line-height:100px; 
	  padding-left:20px; 
	}
	#logo h1{
		font-family:"을지로체";
		font-size:60px;
		color:#39deed;
	}
	#container{
		margin:0 auto;  
	  	width:1200px;       
	}
	img:hover{
		border:3px solid #759ad9;
	}
</style>
</head>
<body>
	<div id="container">
		<header>
			<div id="logo">
		        <h1>배달 천국</h1>
	      	</div>
			<nav>
				<ul id="topMenu" type="none">
					<li><a href="/Delivery/home.jsp">홈</a></li>
					<li><a href="cartList.do">장바구니</a></li>
					<li><a href="orderList.do">주문내역</a></li>
					<li><a href="/Delivery/logout.jsp">로그아웃</a></li>
				</ul>
			</nav>
		</header>
		<main>
			<table>
				<tr>
					<td><a href="showStores.do?type=한식"><img src="/Delivery/img/한식.png" alt="한식"></a></td>
					<td><a href="showStores.do?type=분식"><img src="/Delivery/img/분식.png" alt="분식"></a></td>
					<td><a href="showStores.do?type=카페디저트"><img src="/Delivery/img/카페디저트.png" alt="카페디저트"></a></td>
					<td><a href="showStores.do?type=돈까스회일식"><img src="/Delivery/img/돈까스회일식.png" alt="돈까스회일식"></a></td>
				</tr>
				<tr>
					<td><a href="showStores.do?type=치킨"><img src="/Delivery/img/치킨.png" alt="치킨"></a></td>
					<td><a href="showStores.do?type=피자"><img src="/Delivery/img/피자.png" alt="피자"></a></td>
					<td><a href="showStores.do?type=아시안양식"><img src="/Delivery/img/아시안양식.png" alt="아시안양식"></a></td>
					<td><a href="showStores.do?type=중국집"><img src="/Delivery/img/중국집.png" alt="중국집"></a></td>
				</tr>
				<tr>
					<td><a href="showStores.do?type=족발보쌈"><img src="/Delivery/img/족발보쌈.png" alt="족발보쌈"></a></td>
					<td><a href="showStores.do?type=야식"><img src="/Delivery/img/야식.png" alt="야식"></a></td>
					<td><a href="showStores.do?type=찜탕"><img src="/Delivery/img/찜탕.png" alt="찜탕"></a></td>
					<td><a href="showStores.do?type=패스트푸드"><img src="/Delivery/img/패스트푸드.png" alt="패스트푸드"></a></td>
				</tr>
			</table>
		</main>
	</div>
</body>
</html>