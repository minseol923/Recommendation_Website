<%@page import="myclass.MyclassBean"%>
<%@page import="myclass.Myclass"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>

<html>
<head>
   <title>COOK_01</title>
   <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="/assets/css/HobbyDetail.css">
<%
	String id= (String)session.getAttribute("id");
	String classId = (String)request.getParameter("classId");
	String entry_yn ="N";
	String like_yn="N";
	Myclass myclass= new Myclass();
	myclass.setId(id);
	myclass.setClass_id(classId);
	ArrayList<Myclass> dbPro = MyclassBean.getInstance().getMyclass(myclass);
	
	if(dbPro.size()>0){
		if("Y".equals(dbPro.get(0).getEntry_yn())){
			entry_yn="Y";
		}
		if("Y".equals(dbPro.get(0).getLike_yn())){
			like_yn="Y";
		}
	}
%>
<body class="homepage is-preload">
      <div id="page-wrapper">

         <!-- Header -->
            <section id="header">
               <div class="container">

                  <!-- Logo-->
                  <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>
                  
                  <!-- Nav -->
                     <nav id="nav">
                        <ul class="mainnav">
                        	<li><a href="/index.jsp"><span>About Us</span></a></li>
                         	<li>
                              <a href="/HobbyTest/mbti.jsp"><span>Hobby</span></a>
                              <ul>
                                 <li><a href="/HobbyTest/mbti.jsp">취미 검사</a></li>
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

               </div>
            </section>
   
       <div id="my-Sidebar">
           <h2>HOBBY</h2>
              <ul>
                    <li><a href="/Hobby/Art.jsp" >Art</a></li>
                   <li><a href="/Hobby/Cook.jsp" >Cook</a></li>
                   <li><a href="/Hobby/DIY.jsp" >DIY</a></li>
                   <li><a href="/Hobby/Language.jsp" >Language</a></li>
                   <li><a href="/Hobby/Music.jsp" >Music</a></li>
                   <li><a href="/Hobby/PhotoNVideo.jsp" >Photo & Video</a></li>
                   <li><a href="/Hobby/Sport.jsp" >Sport</a></li>
              </ul>
         </div>
    
         <section id="main"> 
         	<div class="container">
         		 
				<!-- Post -->
				<article class="box post">
								
				<h2>오븐 없이도 완성도 높은 베이킹!</h2>
				
				<!--class="image featured">-->
				<a><img width= 800px height= 600px src="/assets/css/images/COOK_01.jpg" alt=""/></a>
				<br>
				<h3 class="classExplanation">오븐 없이 전자레인지와 밥솥을 이용한 베이킹 클래스입니다.</h3>
				<hr>
				<h3>클래스 정보</h3>
				<text>
					난이도 : 중<br>
					강의 주제 : 8개<br>
					강의 개수 : 42개<br>
					총 강의시간 : 37시간<br>
				</text>
				<hr>
				<h3>커리큘럼</h3>
				<text>
					01. 강의소개, 준비물 소개<br>
					02. 전자레인지를 이용한 스콘 굽기<br>
					03. 전자레인지를 이용한 크림브륄레 만들기<br>
					04. 전자레인지를 이용한 티라미수 만들기<br>
					05. 밥솥을 이용한 머핀 굽기<br>
					06. 밥솥을 이용한 케이크 시트 굽기<br>
					07. 발효기 없기 빵 반죽 발효하기<br>
					08. 집에 있는 재료로 디저트 데코하기<br>
				</text>
				<hr>
				<h3>이 클래스를 완강하면,</h3>
				<text>
					예쁘고 달달한 디저트를 내손으로 만드는 기분을 느껴볼 수 있어요.<br>
					오븐없이 초보자도 만들 수 있는 쉽고 간단한 레시피로 홈베이킹에 도전할 수 있어요.<hr>
				</text>
				<% if(entry_yn!="Y"){%>
					<form id="getclass" method="post" action="/HobbyDetail/myClassPro.jsp" name="myClass">
						<input type="submit" value="클래스 신청하기" id="submit" name="entryBtn" >
						<input type="hidden" name="class_id" value="COOK_01">
						<input type="hidden" name="entry_yn" value="Y">
					</form>
				<%}else{ %>

					<input type="button" value="수강하기" id="playBtn" name="playBtn" >
				<%}%>
				<form method="post" action="/HobbyDetail/myClassPro.jsp" name="myClass">
					<input type="submit" value="좋아요" id="submit" name="likeYnBtn" >
					<input type="hidden" name="class_id" value="COOK_01">
					<input type="hidden" name="like_yn" value="Y">
				</form>	
				</article>
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
  <script>
	   $(document).ready(function(){
			var entry_yn = '<%=entry_yn%>';
			if( entry_yn =='Y'){
				$('#divEntry').hide();
				var text = $('input[name=entryBtn]').val();
				$('input[name=entryBtn]').val('수강하기');
				
			}
			var like_yn = '<%=like_yn%>';
			if( like_yn =='Y'){
				var text = $('input[name=likeYnBtn]').val();
				$('input[name=likeYnBtn]').val('좋아요 취소');
			}
	   });
	   
	   $('#playBtn').click( function() {
		    window.open("https://www.youtube.com/watch?v=iFDL1x8ojAU", "유튜브", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	   } );
   </script>
</html>