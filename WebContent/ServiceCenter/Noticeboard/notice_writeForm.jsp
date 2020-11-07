<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/assets/css/WriteForm.css">
<title>Insert title here</title>
<%
	String id =(String)session.getAttribute("id");
	int num=0, ref=1, re_step=0, re_level=0;
	String strV="";
	
	try{
		if(request.getParameter("num")!=null){
			num=Integer.parseInt(request.getParameter("num"));
			ref=Integer.parseInt(request.getParameter("ref"));
			re_step=Integer.parseInt(request.getParameter("re_step"));
			re_level=Integer.parseInt(request.getParameter("re_level"));
		}
%>

</head>
<body class="homepage is-preload" >
		<div id="page-wrapper">
<!-- Header -->
            <section id="header">
               <div class="container">

                  
                  <!-- Nav -->
                     <nav id="nav">
                        <ul>
                           <li><a href="/index.jsp"><span>About Us</span></a></li>
                           <li>
                              <a href="/HobbyTest/mbti.jsp"><span>Hobby</span></a>
                              <ul>
                                 <li><a href="/HobbyTest/Survey.jsp">취미 검사</a></li>
                                 <li><a href="/HobbyTest/mbti.jsp">MBTI 검사</a></li>
                              </ul>
                           </li>
                           
                           <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">
                           <span>Service Center</span></a>
                              <ul>
                                 <li><a href="/ServiceCenter/Noticeboard/notice.jsp">공지사항</a></li>
                                 <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
                                 <li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
                              </ul>
                           </li>
                           <li><a href="/community/infoboard/info_board.jsp">
                              <span>community</span></a>
                              <ul>
                                 <li><a href="/community/freeboard/free_board.jsp">자유게시판</a></li>
                                 <li><a href="/community/infoboard/info_board.jsp">정보게시판</a></li>
                              </ul>
                           
                           </li>
                        </ul> 
                                <ul class="navtop"> 
                        			<%if("admin".equals(session.getAttribute("id"))){ %> <!-- 관리자면 -->
	                                	<li><a href="/admin/memberList.jsp">관리자메뉴</a></li>
	                                	<li><a href="../Join/Logout.jsp">Logout</a></li>
	                                	
                                	<%}else if(session.getAttribute("id")!=null){ %>      <!-- 아이디가 있으면 -->
	                                	<li><a href="../Join/Logout.jsp">Logout</a></li>
	                                	<li><a class="fas fa-user fa-1.5x" href="/MyPage/Profile.jsp"></a></li>
                                	<%}else{%>       
                                	<li><a href="/Join/LoginForm.jsp">Login</a></li>
				                    <li><a href="/Join/insertForm.jsp">Join</a></li>
				                    <%} %>
                                            
                        </ul>
                     </nav>
			<!-- Logo -->
                     <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>
               </div>
            </section>
 		<div id="my-Sidebar">
        	<h2>고객센터</h2>
        		<ul>
         		  	<li><a href="/ServiceCenter/Noticeboard/notice.jsp">공지사항</a></li>
        		  	<li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
         	  	 	<li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
        		</ul>
      	</div>
      	<section id="main"> 
			<div class="container">
		 		<div id="content">

<h3> 글쓰기 </h3>
<form method="post" action="/ServiceCenter/Noticeboard/notice_writePro.jsp">
<input type="hidden" name="boardType" value="notice">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level %>">


 <table border="1">
   <tr>
   	<td colspan="2"> 글목록 </td>
   </tr>
   
   <tr>
   	<td width="70" align="center">이름 </td>
   	<td> <input type="text" size="10" name="writer" value=<%=id %>></td>
  </tr>
  
  <tr>
   	<td width="70" align="center"> 제목 </td>
   	<td width="300" align="left">
	   	<%
	   		if(request.getParameter("num")==null) {%>
	   			<input type="text" size="40" maxlength="50" name="subject" value="[공지]">
	   	<% }%>
	   	
   	 </td>
  </tr>
  
   <tr>
   	<td width="70" align="center"> 내용 </td>
   	<td width="300" align="left"><textarea name="content" rows="13" cols="40"></textarea></td>
  </tr>
     <tr>
   	<td width="70" align="center"> 비밀번호 </td>
   	<td> <input type="password" size="8" maxlength="18"name="passwd"></td>
  </tr>
  
   <tr>
   	<td align="right" colspan="2"> <input type="submit" value="글쓰기">
	   	<input type="reset" value="다시작성">
	   	<input type="button" value="목록보기" onclick="document.location.href='/ServiceCenter/Noticeboard/notice.jsp'">
    </td>
   	
  </tr>
 </table>
 
 <%
	}catch(Exception e){}
 %>
</form>
</div>
</div>
</section>

</body>
</html>