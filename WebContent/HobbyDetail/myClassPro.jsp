<%@page import="myclass.MyclassBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "myclass.MyclassBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="myClass" scope="page" class="myclass.Myclass">
   <jsp:setProperty name="myClass" property="*"/>
</jsp:useBean>
 
<%
	String id =(String)session.getAttribute("id");
	String class_id= request.getParameter("class_id");
	String entry_yn= request.getParameter("entry_yn");
	String like_yn= request.getParameter("like_yn");
	if(id==null){
		response.sendRedirect("/Join/LoginForm.jsp");
	}else{
		
	
		if("Y".equals(entry_yn)){
			myClass.setReg_date(new Timestamp(System.currentTimeMillis()) );
			myClass.setId(id);
			myClass.setEntry_yn("Y");
			MyclassBean dbPro = MyclassBean.getInstance();
		    dbPro.insertMyclass(myClass);
		}
		myClass.setReg_date(new Timestamp(System.currentTimeMillis()) );
		myClass.setId(id);
		myClass.setLike_yn(like_yn);
		MyclassBean dbPro = MyclassBean.getInstance();
	    dbPro.updateMyclass(myClass);
		
	    response.sendRedirect("/HobbyDetail/"+class_id+".jsp?classId="+class_id);
	}
%>