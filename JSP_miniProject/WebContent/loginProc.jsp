<%@page import="beans.MemberMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mmgr" class="beans.MemberMgr" />
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	boolean result = mmgr.loginMember(id, pwd);
	String msg = "로그인에 실패하였습니다.";
	if (result) {
		msg = "로그인에 성공하였습니다.";
		session.setAttribute("idKey", id);
	}
	%>
<script> 
	alert("<%=msg%>"); 
	location.href="login.jsp"; 
</script>