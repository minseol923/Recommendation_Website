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
		alert("���� ����");
		location.href = "/index.jsp";
	</script>	
<% } else { %>
	<script>
		alert("���� ����!\n�����ڿ� ���ǹٶ�");
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