<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mmgr" class="beans.MemberMgr" />
<jsp:useBean id="mbean" class="beans.MemberBean" />
<jsp:setProperty property="*" name="mbean" />
<%
	boolean result = mmgr.updateMember(mbean);
	if (result) {
%>
	<script>
		alert("회원정보를 수정 하였습니다.");
		location.href = "login.jsp";
	</script>
<%
	} 
	else {
%>
	<script>
		alert("회원정보 수정에 실패 하였습니다.");
		history.back();
	</script>
<%
	}
%>
