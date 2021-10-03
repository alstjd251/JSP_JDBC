<%@page import="beans.MemberMgr"%>
<%@page import="java.util.ArrayList"%>
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
<jsp:useBean id="mgr" class="beans.MemberMgr" />

<h3>아이디 중복확인</h3>
<form>
	<div>
			<%
			String id = request.getParameter("id");
			boolean result = mgr.checkId(id);
			%>
			<b><%=id%></b>
			<%
			if (result) {
				out.println("는 이미 존재하는 ID입니다.");
			} else {
				out.println("는 사용 가능한 ID입니다.");
			}
			%>
			<br> <br> <a href="#" onclick="self.close()">닫기</a>
		</div>
</form>
</body>
</html>