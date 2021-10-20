<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type = "text/javascript">
	window.onload = function(){
		document.getElementById("mem").disabled = true;
	}
	function check() {
		if (!document.memberinfo.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if (!document.memberinfo.pwd.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		if (!document.memberinfo.gender.value) {
			alert("성별을 입력하세요.");
			return false;
		}
		
		if (!document.memberinfo.zipcode.value) {
			alert("우편번호를 입력하세요.");
			return false;
		}
		
		if(document.memberinfo.birth.value.length != 6){
			alert("생년월일은 6자리입니다.");
			return false;
		}
	}

	function idCheck(id) {
		if (id == "") {
			alert("아이디를 입력하세요");
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "", "width=300, height=150");
		document.getElementById("mem").disabled = false;
	}
	
	function zipSearch(){
		url = "zipSearch.jsp?search=n";
		window.open(url, "", "width=500, height=300")
	}
</script>

</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<h3>회원가입</h3>
<form action = "memberProc.jsp" method = "post" name = "memberinfo" onsubmit = "return check()">
	<div>
		<table border = "1">
			<tr>
				<td>id : </td>
				<td><input type = "text" name = "id"></td>
				<td align = "right">
					<input type = "button" onclick = "idCheck(this.form.id.value)" value = "id 중복확인">
				</td>
			</tr>
			<tr>
				<td>pw : </td>
				<td colspan = "2"><input type = "password" name = "pwd"></td>
			</tr>
			<tr>
				<td>name : </td>
				<td colspan = "2"><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>gender : </td>
				<td colspan = "2">
					<input type="radio" name="gender" value="M">남
					<input type="radio" name="gender" value="F">여
				</td>
			</tr>
			<tr>
				<td>email : </td>
				<td colspan = "2"><input type = "email" name = "email"></td>
			</tr>
			<tr>
				<td>birth : </td>
				<td colspan = "2"><input type = "text" name = "birth"></td>
			</tr>
			<tr>
				<td>zipcode : </td>
				<td><input type = "text" name = "zipcode"></td>
				<td align = "right">
					<input type = "button" onclick = "zipSearch()" value = "우편번호 검색">
				</td>
			</tr>
			<tr>
				<td>address : </td>
				<td colspan = "2"><input type = "text" name = "address"></td>
			</tr>
			<tr>
				<td>hobby : </td>
				<td colspan = "2"><input type = "text" name = "hobby"></td>
			</tr>
			<tr>
				<td>job : </td>
				<td colspan = "2"><input type = "text" name = "job"></td>
			</tr>
			<tr>
				<td colspan = "3" align = "right">
					<input type = "button" value = "로그인" onclick = "javascript:location.href='login.jsp'">
					<input type = "submit" value = "회원가입" id = "mem">
					<input type = "reset" value = "다시쓰기">
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>