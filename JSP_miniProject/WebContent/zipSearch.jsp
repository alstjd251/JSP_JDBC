<%@page import="beans.ZipBean"%> 
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "mmgr" class = "beans.MemberMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호 검색</title>

<script type="text/javascript">
</script>
</head>
<body>
	<form action = "zipSearchProc.jsp" method = "post">
		<table>
			<tr>
				<td>도로명 입력 : </td>
				<td><input type = "text" name = "area3"></td>
				<td><input type = "submit" value = "검색"></td>
			</tr>
		</table>
	</form>
</body>
</html>