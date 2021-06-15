<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
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
	legend{
		font-family:"한나체";
		font-size:50px;
	}
	label,input{
		font-family:"주아체air";
		font-size:20px;
	}
	#total{
		font-family:"주아체air";
		font-size:25px;
	}
	#won{
		color:#eb4e36;
	}
	fieldset{
		width:600px;
	}
</style>
</head>
<body>
	<%
	int totalSum = Integer.parseInt(request.getParameter("total"));
	%>
	<form action="order.do" method="post">	
		<fieldset>
		<legend>배달 정보</legend><p>
			<label for="tel">수령인 전화번호</label>
			<input type="tel" name="tel" id="tel" placeholder="하이픈 빼고 입력해 주세요." required><p>
			<label for="addr">배달 주소</label>
			<input type="text" name="addr" id="addr" required><p><hr>
			<div id="total">총 금액 : <b id="won"><%=totalSum %></b> 원</div>
			<input type="hidden" name="totalSum" value="<%=totalSum%>">
		</fieldset><p>
		<input type="submit" value="주문하기">
	</form>
</body>
</html>