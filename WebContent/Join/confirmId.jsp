<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Test.user" %>
<%@ page import = "Test.userDB" %>
<jsp:useBean id="userjoin" class="Test.userDB"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id= request.getParameter("id");
	userDB db = userDB.getInstance();
	boolean b= db.idCheck(id);
	
	if(b) {%>
	<h4>이미 사용중인 아이디입니다.</h4>
	<%}else{ %>
	<h4>입력하신 <%=id %>는 사용가능합니다.</h4>
<%} %>
</body>
</html>