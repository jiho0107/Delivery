<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.table{
		border-collapse:collapse;
	}
</style>
<title>회원가입</title>
</head>
<body>
	<h2>회원가입</h2>
	<form name="regForm" action="join.do" method="post" onsubmit="return checkValue()">
		<table border="1" class="table">
			<tr><th>아이디*</th><td><input type="text" name="id" maxlength="10" 
			onkeydown="inputIdCheck()" required>
			<input type="hidden" name="idDuplication" value="idUncheck">
			<input type="button" value="ID중복확인" onclick="idCheck()"></td></tr>
			<tr><th>닉네임*</th> <td><input type="text" name="nick" maxlength="20" required></td></tr>
			<tr><th>비밀번호*</th> <td><input type="password" name="pwd" maxlength="20" required></td></tr>
			<tr><th>비밀번호 확인*</th> <td><input type="password" name="rePwd" maxlength="20" required></td></tr>
			<tr><th>이름*</th> <td><input type="text" name="name" maxlength="20" required></td></tr>
			<tr><th>주소*</th> <td> <input type="text" name="addr" maxlength="50" required></td></tr>
			<tr><th>휴대전화*</th> <td> <input type="tel" name="tel" maxlength="13" required
			placeholder="하이픈(-)을 빼고 입력해 주세요."></td></tr>
			<tr><th>이메일</th> <td> <input type="email" name="email"></td></tr>
			<tr><th>생년월일</th> <td> <input type="text" name="birth" placeholder="YYYYMMDD"></td></tr>
		</table>
		<p>
		<input type="submit" value="회원가입하기" onclick="checkValue()">
	</form>
	<script type="text/javascript">
		function idCheck(){
			window.open("idCheckForm.jsp","idCheck","width=400,height=350");
		}
		function inputIdCheck(){
			document.regForm.idDuplication.value = "idUncheck";
		}
		function checkValue()
		{
			var form = document.regForm;
			if(!form.id.value){
				alert("아이디를 입력하세요.");
				form.id.focus();
				return false;
			}
			if(form.idDuplication != "idCheck"){
				alert("아이디 중복체크를 해주세요.");
				return false;
			}
			if(!form.pwd.value){
				alert("비밀번호를 입력하세요.");
				form.pwd.focus();
				return false;
			}
			if(!form.rePwd.value){
				alert("비밀번호 확인을 해주세요.");
				form.rePwd.focus();
				return false;
			}
			if(form.pwd.value != form.rePwd.value){
				alert("비밀번호를 동일하게 입력하세요.");
				form.pwd.focus();
				return false;
			}
			if(!form.name.value){
				alert("이름을 입력하세요.");
				form.name.focus();
				return false;
			}
			if(!form.nick.value){
				alert("닉네임을 입력하세요.");
				form.nick.focus();
				return false;
			}
			if(!form.addr.value){
				alert("주소를 입력하세요.");
				form.addr.focus();
				return false;
			}
			if(!form.tel.value){
				alert("전화번호를 입력하세요.");
				form.tel.focus();
				return false;
			}
			
			return true;
		}
	</script>
</body>
</html>