<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "board.BoardDataBean" %>

<html>
<head>
<title>게시판</title>
</head>
<body>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.updateGetArticle(num);
%>

<p>글수정</p>
<br>
<form method="post" name="writeform" 
action="/ServiceCenter/Q&Aboard/qna_updatePro.jsp?pageNum=<%=pageNum%>" onsubmit="return writeSave()">
<table border="1">
  <tr>
    <td  width="70"  align="center">이 름</td>
    <td align="left" width="330">
       <input type="text" size="10" maxlength="10" name="writer" 
         value="<%=article.getWriter()%>">
	   <input type="hidden" name="num" value="<%=article.getNum()%>"></td>
  </tr>
  <tr>
    <td  width="70"  align="center" >제 목</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="50" name="subject"
        value="<%=article.getSubject()%>"></td>
  </tr>
  <tr>
    <td  width="70" align="center">Email</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="30" name="email" 
        value="<%=article.getEmail()%>" ></td>
  </tr>
  <tr>
    <td  width="70"  align="center" >내 용</td>
    <td align="left" width="330">
     <textarea name="content" rows="13" cols="40" 
       style="ime-mode:active;"><%=article.getContent()%></textarea></td>
  </tr>
  <tr>
    <td  width="70" align="center" >비밀번호</td>
    <td align="left" width="330" >
     <input type="password" size="8" maxlength="12" 
               name="passwd">
     
	 </td>
  </tr>
  <tr>      
   <td colspan=2  align="center"> 
     <input type="submit" value="글수정" >  
     <input type="reset" value="다시작성">
     <input type="button" value="목록보기" 
       onclick="document.location.href='/ServiceCenter/Q&Aboard/Q&A.jsp?pageNum=<%=pageNum%>'">
   </td>
 </tr>
 </table>
</form>
<%
}catch(Exception e){}%>      
      
</body>
</html>