<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

<html>
<head>
   <title>Sport</title>
   <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="../assets/css/Hobby.css">

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
           <h2>HOBBY</h2>
              <ul>
                    <li><a href="Art.jsp" >Art</a></li>
                   <li><a href="Cook.jsp" >Cook</a></li>
                   <li><a href="DIY.jsp" >DIY</a></li>
                   <li><a href="Language.jsp" >Language</a></li>
                   <li><a href="Music.jsp" >Music</a></li>
                   <li><a href="PhotoNVideo.jsp" >Photo & Video</a></li>
                   <li><a href="Sport.jsp" >Sport</a></li>
              </ul>
         </div>
         
         <section id="main"> 
         <div class="container">
             <div class="row">
                 <div class="column">
                   <div class="card">
                      <a href="/HobbyDetail/SPORTS_01.jsp?classId=SPORTS_01" class="image featured"><img src="/assets/css/images/SPORTS_01.jpg" alt="" /></a>
                      <header>
                        <h3>요가로 몸과 마음 바로잡기</h3>
                     </header>
                            <p>월 53,000원 (6개월)</p>
                   </div>
                 </div>
                 <div class="column">
                   <div class="card">
                      <a href="/HobbyDetail/SPORTS_02.jsp?classId=SPORTS_02" class="image featured"><img src="/assets/css/images/SPORTS_02.jpg" alt="" /></a>
                      <header>
                        <h3>운동에도 유행이 있다! 필라테스로 트렌드에 맞는 운동을 즐겨요</h3>
                     </header>
                            <p>월 38,000원 (6개월)</p>
                   </div>
                 </div>
                 <div class="column">
                   <div class="card">
                      <a href="/HobbyDetail/SPORTS_03.jsp?classId=SPORTS_03" class="image featured"><img src="/assets/css/images/SPORTS_03.jpg" alt="" /></a>
                      <header>
                        <h3>근력과 체력 향상을 위한 헬스</h3>
                     </header>
                            <p>월 42,000원 (6개월)</p>
                   </div>
                 </div>
                   </div>
                 </div>
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
   </body>
</html>