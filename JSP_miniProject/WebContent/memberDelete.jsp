<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>
<jsp:useBean id="mmgr" class="beans.MemberMgr" />
<%
	mmgr.deleteMember(id);
	//세션에 저장된 idKey를 제거 
	session.removeAttribute("idKey");
	//현재 세션을 서버에서 제거 
	session.invalidate(); 
	response.sendRedirect("login.jsp"); //로그아웃 후 로그인 폼으로 돌아가기 
%>