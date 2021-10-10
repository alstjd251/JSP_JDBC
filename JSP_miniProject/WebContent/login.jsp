<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>

<script type="text/javascript">
	function loginCheck() {
		if (document.log.id.value == "") {
			alert("아이디를 입력해 주세요.");
			return;
		}
		if (document.log.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			return;
		}
		//document.log.submit();
	}
</script>
</head>
<body>
	<%
	if (id != null) {
	%>
	<input type = "button" onclick="location.href = 'logout.jsp'" value = "로그아웃">
	<input type = "button" onclick="location.href = 'memberUpdate.jsp'" value = "회원수정">
	<input type = "button" onclick="location.href = 'memberDelete.jsp'" value = "회원탈퇴">
	<%
	} else {
		id = request.getParameter("id");
	%>
		<h4>로그인</h4>
		<form name="log" post="method" action="loginProc.jsp">
			<div>
				<table>
					<tr>
						<td>id :</td>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>pw :</td>
						<td><input type="password" name="pwd"></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="로그인" onclick = "loginCheck()">
						<input type="button" onclick="location.href = 'member.jsp'" value="회원가입" onclick="loginCheck()">
						</td>
					</tr>
				</table>
			</div>
		</form>
	<%
	}
	%>
</body>
</html>