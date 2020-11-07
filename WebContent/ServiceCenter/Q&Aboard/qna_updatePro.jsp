<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="article" scope="page" class="board.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
 
    String pageNum = request.getParameter("pageNum");

	BoardDBBean dbPro = BoardDBBean.getInstance();
    int check = dbPro.updateArticle(article); 

    if(check==1){ //db와 패스워드가 같아서 1을 리턴받으면(성공했을때).
%>
	  <meta http-equiv="Refresh" content="0;url=/ServiceCenter/Q&Aboard/Q&A.jsp?pageNum=<%=pageNum%>" >
<% }else{%>
      <script type="text/javascript">      
        
        alert("비밀번호가 맞지 않습니다"); //db와 passwd가 다를경우 수정 불가!
        history.go(-1);
     
     </script>
<%
  }
%> 