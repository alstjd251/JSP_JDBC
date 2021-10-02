<%@page import="beans.MemberMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id = "mbean" class = "beans.MemberBean">
	<jsp:setProperty name = "mbean" property = "*"/>
</jsp:useBean>
<%
	MemberMgr mmgr = new MemberMgr();
	mmgr.insertMember(mbean);
	response.sendRedirect("login.jsp");
%>
</body>
</html>