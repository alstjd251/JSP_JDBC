<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<h2>Login</h2>
<form action = "loginProc.jsp" method = "post">
	<div>
		<table>
			<tr>
				<td>id : </td>
				<td><input type = "text" name = "id"></td>
			</tr>
			<tr>
				<td>pw : </td>
				<td><input type = "password" name = "pw"></td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "login">
					<input type = "button" onclick = "location.href = 'member.jsp'" value = "회원가입">
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>