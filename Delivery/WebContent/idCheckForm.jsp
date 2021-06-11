<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복확인</title>
</head>
<body onload="idValue()">
	<div style="text-align:center">
		<h3>* 아이디 중복확인 *</h3>
		<form action="idCheck.do" method="post">
			아이디 : <input type="text" name="id" maxlength="20" id="userId" autofocus>
			<input type="submit" value="중복확인"><p>
		
	<%
	String msg = (String)request.getAttribute("msg");
	String id = (String)request.getAttribute("id");
	if(msg != null)
	{
		if(msg.equals("true"))
			out.println("<p style='color:red'>동일한 아이디가 이미 존재합니다. 다른 아이디를 입력해 주세요.</p>");
		if(msg.equals("false"))
		{
			out.println("<span style='color:blue'>사용 가능한 아이디입니다.</span>");
			out.println("<a href='javascript:apply(\"" + id + "\")'>[적용]</a><p>"); 
		 }
	}
	%>
		</form>
		<input type="button" value="창닫기" onclick="window.close()">
	</div>
	<script>
		function apply(id)
		{
			opener.document.regForm.id.value = id;
			opener.document.regForm.idDuplication.value = "idCheck";
			window.close();
		}
		function idValue()
		{
			document.getElementById("userId").value = opener.document.regForm.id.value;
		}
	</script>
</body>
</html>