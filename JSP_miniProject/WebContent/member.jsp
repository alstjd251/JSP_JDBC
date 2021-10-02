<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form>
	<div>
		<table>
			<tr>
				<td>id : </td>
				<td><input type = "text" name = "id"></td>
				<td><input type = "button" onclick = "location.href = 'idCheck.jsp'" value = "id 중복확인"></td>
			</tr>
			<tr>
				<td>pw : </td>
				<td colspan = "2"><input type = "text" name = "pw"></td>
			</tr>
			<tr>
				<td>name : </td>
				<td colspan = "2"><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>gender : </td>
				<td colspan = "2"><input type = "text" name = "gender"></td>
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
				<td><button>우편번호 검색</button></td>
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
				<input type = "reset" value = "다시쓰기">
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>