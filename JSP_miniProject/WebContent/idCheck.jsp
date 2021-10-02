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
	String id = request.getParameter("id");

	if(pass.equals(password)){
		bdao.deleteBoard(num);
		response.sendRedirect("BoardList.jsp");
	}
	else{
		%>
		<script type = "text/javascript">
			alert("아이디 불일치.");
			history.go(-1);
		</script>
		<%
	}
%>
</body>
</html>