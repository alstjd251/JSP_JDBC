<%@page import="beans.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script type="text/javascript">
	function zipSearch() {
		url = "zipSearch.jsp?search=n";
		window.open(url, "", "width=500, height=300");
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mmgr" class="beans.MemberMgr" />
<%
	String id = (String)session.getAttribute("idKey"); 
	MemberBean mbean = mmgr.getMember(id); 
%>
<h3>회원가입</h3>
<form action = "memberUpdateProc.jsp" method = "post" name = "changeinfo" onsubmit = "return check()">
	<div>
		<table border = "1">
			<tr>
				<td>id : </td>
				<td colspan = "2">
				<input name = "id" value = "<%=mbean.getId()%>" readonly>
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
					<input type = "submit" value = "수정하기">
					<input type = "reset" value = "다시쓰기">
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>