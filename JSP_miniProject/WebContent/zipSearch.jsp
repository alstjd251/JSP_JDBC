<%@page import="beans.MemberMgr"%>
<%@page import="beans.ZipBean" %>
<%@page import="java.util.Vector" %>
<%@page import="beans.DBConnectionMgr" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");
   String search = request.getParameter("search");
   String area3 = null;
   MemberMgr dbc = new MemberMgr();
   Vector<ZipBean> vlist = null;
   if(search.equals("y")) {
      area3 = request.getParameter("area3");
      vlist = dbc.zipcodeRead(area3);
   }
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
   function loadSearch() {
   if(zipp.area3.value == "") {
      alert("도로명을 입력하세요.");
      return;
   }
   zipp.action = "zipSearch.jsp";
   zipp.submit();
}
   function sendAdd(zipcode, adds) {
      opener.document.memberinfo.zipcode.value = zipcode;
      opener.document.memberinfo.address.value = adds;
      self.close();
   }
</script>
<title>우편번호 검색</title>
</head>
<body>
<form name="zipp" method="post">
도로명 주소 찾기: <input type="text" placeholder="도로명 주소 입력" name="area3">
<input type="button" value="검색" onclick="loadSearch()">
<% if (search.equals("y")){ 
   if(vlist.isEmpty()){ 
%>
검색된 결과가 없습니다.
<%
} else {
   for(int i = 0; i<vlist.size();i++) {
      ZipBean bean = vlist.get(i);
      String zZipcode = bean.getZipcode();
      String zArea1 = bean.getArea1();
      String zArea2 = bean.getArea2();
      String zArea3 = bean.getArea3();
      String addres = zArea1 + " " + zArea2 + " " + zArea3 + " ";
%>
   <a href="#" onclick="javascript:sendAdd('<%=zZipcode %>','<%=addres %>')">
   <p><%=zZipcode+ " " +addres %></p>
   </a>   
<%
      }
   }
}
%>
<br>
<br>
<br>
   <input type="button" value="닫기" onclick="self.close()">
   <input type="hidden" name="search" value="y">
</form>
</body>
</html>