<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "board.BoardDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%!
    int pageSize = 10;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	request.setCharacterEncoding("utf-8");
	String id =(String)session.getAttribute("id");
	
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) {
	    pageNum = "1";
	}
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	List<BoardDataBean> articleList = null; 
	
	BoardDBBean dbPro = BoardDBBean.getInstance();
	
	String boardType="notice";
	String keyField="";
	String keyword="";
	
	if(request.getParameter("keyField")!=null){
		 keyField=request.getParameter("keyField");	
		 keyword=request.getParameter("keyword");
	
		
	}
	
	articleList = dbPro.getArticles(startRow, pageSize, boardType,keyField,keyword);
	
	if(articleList!=null){
		count=dbPro.getArticleCount(boardType);
	}
		number = count-(currentPage-1)*pageSize;
		
		
%>
<html>
<head>
	<title>MY HOB! Q&A게시판</title>
	<meta charset="utf-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="/assets/css/Board.css"/>
</head>
<body class="homepage is-preload">
		<div id="page-wrapper">

		<!-- Header -->
            <section id="header">
               <div class="container">

                  <!-- Nav 진짜마지막 -->
                     <nav id="nav">
                        <ul class="mainnav">
                        	<li><a href="/index.jsp"><span>About Us</span></a></li>
                         	<li>
                              <a href="/HobbyTest/Survey.jsp"><span>Hobby</span></a>
                              <ul>
                                 <li><a href="/HobbyTest/Survey.jsp">취미 검사</a></li>
                                 <li><a href="/HobbyTest/mbti.jsp">MBTI 검사</a></li>
                              </ul>
                           </li>
                           <li><a href="/ServiceCenter/Noticeboard/notice.jsp">
                           <span>Service Center</span></a>
                              <ul>
                                 <li><a href="/ServiceCenter/Noticeboard/notice.jsp">공지사항</a></li>
                                 <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
                                 <li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
                              </ul>
                           </li>
                           <li><a href="/community/freeboard/free_board.jsp">
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
                     
                      <!-- Logo-->
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
      		
      		<!-- Q&A -->
      	<section id="main"> 
			<div class="container">
		 		<div id="content">
		 		
		 	<p>글목록(전체 글:<%=count%>)</p>
			
			
			<% if (count == 0) { %>
			
			<table>
			<tr>
			    <td align="center">
			              게시판에 저장된 글이 없습니다.
			    </td>
			</table>
			
			<% } else {%>
			<table border="1"> 
			    <tr height="30"> 
			      <td align="center"  width="50"  >번 호</td> 
			      <td align="center"  width="250" >제   목</td> 
			      <td align="center"  width="100" >작성자</td>
			      <td align="center"  width="150" >작성일</td> 
			      <td align="center"  width="50" >조 회</td> 
			    
			    </tr>
			<%  
			   for (int i = 0; i < articleList.size() ; i++) {
			       BoardDataBean article = (BoardDataBean)articleList.get(i);
			%>
			   <tr height="30">
			    <td  width="50" > <%=number--%></td>
			    <td  width="250" align="left">
			      <a href="/ServiceCenter/Noticeboard/content.jsp?boardType=notice&num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
			           <%=article.getSubject()%></a> 
			    </td>
			    <td width="100" align="left"> 
			       <a href="mailto:<%=article.getEmail()%>">
			                     <%=article.getWriter()%></a>
			                     </td>
			    <td width="150"><%= sdf.format(article.getReg_date())%></td>
			    <td width="50"><%=article.getReadcount()%></td>
			
			  </tr>
			<%}%>
			</table>
			<%}%>
			
			<%if("admin".equals(session.getAttribute("id"))){ %>
			<table>
			  <tr>
			    <td align="right">
			      <button type="button" class="write" onclick="writeCheck()">글쓰기</button>
			    </td>
			  </tr>
			</table>
			<%}%>
			<form name="search3" method="post" action="/ServiceCenter/Noticeboard/notice.jsp">
				<div>
				<table>
					<tr>
				  		<td>
				  			<select id="keyField" name="keyField">
				  				<option value="" selected>전체</option>
								<option value="writer">이름</option>
								<option value="content">내용 </option>
								<option value="subject">제목</option>	
				  			</select>
					  		<input type="text" id="keyword" name="keyword">
					  		<input type="submit" value="검색">
					  	
				  		</td>
				  	</tr>
				  	</table>
			  	</div>
			</form>	
			  	<div style="text-align:center";>
			<%
				if(count>0){
					int pageCount =count/pageSize+(count % pageSize==0?0:1);
					int startPage=1;
					
					if(currentPage % 10 !=0)
						startPage=(int)(currentPage/10)*10+1;
					else
						startPage=((int)(currentPage/10)-1)*10 +1;
					
					int pageBlock=10;
					int endPage=startPage+pageBlock-1;
					if(endPage >pageCount) endPage=pageCount;
					
					if(startPage>10){ %>
						<a href="/ServiceCenter/Noticeboard/notice.jsp?pageNum=<%=startPage-10 %>">[이전]</a>
					
				<% }
					
					for(int i =startPage; i<=endPage;i++){ %>
						<a href="/ServiceCenter/Noticeboard/notice.jsp?pageNum=<%=i%>">[<%=i %>]</a>
				<% }
					
					if(endPage < pageCount){ %>
					<a href="/ServiceCenter/Noticeboard/notice.jsp?pageNum=<%=startPage+10 %>">[다음]</a>
				
				<%
						}
					}
				%>
	
                        </div>
                          </div>
                           </section>
		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script>
			function writeCheck(){
				location.href="/ServiceCenter/Noticeboard/notice_writeForm.jsp";
			}
			</script>
	</body>
</html>