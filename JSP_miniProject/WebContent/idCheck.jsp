<%@page import="beans.MemberMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복체크</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mmgr" class="beans.MemberMgr" />

<h3>아이디 중복확인</h3>
<form>
	<div>
		<%
		String id = request.getParameter("id");
		boolean result = mmgr.checkId(id);
		%>
		<b><%=id%></b>
		<%
		if(result) {
			out.println("는 이미 존재하는 ID입니다.");
		} else {
			out.println("는 사용 가능한 ID입니다.");
		}
		%>
	</div>
</form>
</body>
</html>