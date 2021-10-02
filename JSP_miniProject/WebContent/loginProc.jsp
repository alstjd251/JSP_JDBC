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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!-- useBean을 이요하여 한번에 데이터 받기 -->
<jsp:useBean id = "mbean" class = "beans.MemberBean">
	<jsp:setProperty name = "mbean" property = "*"/>
</jsp:useBean>
<!-- 텍스트필드에 적은 내용들을 빈즈에다가 저장하겠다, 자바 빈의 필드명과 텍스트필드의 name값이 같아야만 가능함 -->
<%
	mbean.setHobby(str);
	MemberDAO mdao = new MemberDAO();
	//insertMember 함수호출
	mdao.insertMember(mbean);
	//회원가입이 되었다면 회원정보를 보여주는 페이지로 이동시키고 싶다.
	response.sendRedirect("MemberArray.jsp");
%>
</body>
</html>