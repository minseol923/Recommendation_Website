<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="userjoin" class="Test.userDB"/>
<jsp:useBean id="bean" class="Test.user"/>
<%
	boolean b = userjoin.modifyData(bean);
	if(b){
%>
	<script>
		alert("수정 성공");
		location.href = "/index.jsp";
	</script>	
<% } else { %>
	<script>
		alert("수정 실패!\n관리자에 문의바람");
		history.back();
	</script>	
<%
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>