<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="Test.user"%>
<jsp:useBean id="userjoin" class="Test.userDB"/>
 
 <%
	String id =(String)session.getAttribute("id");
	user use = userjoin.getData(id);
%>


<!DOCTYPE HTML>

<html>
	<head>
		<title>프로필 카드</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="../assets/css/MyPage.css" />
	</head>
	<body class="homepage is-preload" style="overflow-x:hidden">
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
            
            
			<!-- 사이드 바 -->
			<div id="my-Sidebar">
        		<h2>마이페이지</h2>
        		<ul>
         		  	<li><a href="../MyPage/Profile.jsp" title="프로필">프로필</a></li>
        		  	<li><a href="../MyPage/MyClass.jsp" title="내 클래스">내 클래스</a></li>
         	  	 	<li><a href="../MyPage/EditProfile.jsp" title="회원 정보 관리">회원 정보 관리</a></li>
        		</ul>
      		</div>
      
		<!-- Main -->
		   <section id="main">
               <div class="container">
                  <div id="content">
                  
                     <!-- Profile -->
                      <div class="profile">
                              <div class="left">
                              <input type="hidden" name="ID" />
                              <img src="../images/profile_img.jpg" alt="" width=100px ><br>                              
                                 <h4><%=use.getName() %></h4>
                           </form>                                 
                              </div>
                              
                              <div class="right">
                                    <h3>프로필 카드</h3>
                                    <div class="data">
                                       <h4>가입일</h4>
                                       <p><%=use.getReg_date() %></p>
                                    </div>
                                    <div class="data">
                                       <h4>이메일</h4>
                                       <p><%=use.getEmail() %></p>
                                    </div>
                                    <div class="data">
                                       <h4>생일</h4>
                                       <p><%=use.getBirth() %></p>
                                    </div>
                                    <div class="data">
                                       <h4>관심 분야</h4>
                                       <p><%=use.getHobby() %></p>
                                    </div>
                                  
                              </div>
                        </div>
                  </div>
                </div>
         </section>
         

      </div>

      <!-- Scripts -->
         <script src="../assets/js/jquery.min.js"></script>
         <script src="../assets/js/jquery.dropotron.min.js"></script>
         <script src="../assets/js/browser.min.js"></script>
         <script src="../assets/js/breakpoints.min.js"></script>
         <script src="../assets/js/util.js"></script>
         <script src="../assets/js/main.js"></script>
   </body>


</html>