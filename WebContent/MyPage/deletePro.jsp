<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Test.user"%>
<jsp:useBean id="userjoin" class="Test.userDB"/>
 <jsp:useBean id="bean" class="Test.user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
   String id = (String)request.getParameter("id");
   String passwd = (String)request.getParameter("passwd");
   boolean deleteConfirm = userjoin.deleteConfirm(id, passwd);
   if(deleteConfirm){

%>

      <script type="text/javascript">

         var confirmResult = confirm("���� �����Ͻðڽ��ϱ�?");

         if(confirmResult == true){

            var deleteId = "<%=id%>";

            post_to_url("/Join/DeletePro.jsp",{'id':deleteId});

         } else {

            history.back();

         }

      

      </script>

<%

   } else {

%>

      <script>

         alert("��й�ȣ�� Ʋ���ϴ�!");

         history.back();

      </script>   

<%

   }

%>

</body>
</html>