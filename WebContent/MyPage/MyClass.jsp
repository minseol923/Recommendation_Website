<%@page import="myclass.MyclassBean"%>
<%@page import="myclass.Myclass"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>My class</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="../assets/css/MyPage.css" />
		<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
		<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<%
	String id= (String)session.getAttribute("id");
	String class_id=request.getParameter("class_id");	
	String like_yn=request.getParameter("like_yn");

//	String entryYn ="N";
	
	//가입한 클래스
	Myclass myclass= new Myclass();
	myclass.setId(id);
	myclass.setClass_id(class_id);
	myclass.setEntry_yn("Y");
	ArrayList<Myclass> entryPro = MyclassBean.getInstance().getMyclass(myclass);

	//좋아요한 클래스
	Myclass myclass2= new Myclass();
	myclass.setId(id);
	myclass.setClass_id(class_id);
	myclass.setLike_yn("Y");
	ArrayList<Myclass> likePro = MyclassBean.getInstance().getMyclass(myclass);
%>
		<script>
		$(document).ready(function(){
			$('.slider-wrap1,.slider-wrap2').slick({
			  slide:'div',
			  infinite: true,
			  slidesToShow: 3,
			  slidesToScroll: 3,
			  autoplay: true, /* 자동으로 다음이미지 보여주기 */        
		      arrows: true, /* 화살표 */       
		      autoplaySpeed:3000,/* 다음이미지로 넘어갈 시간 */
		      speed:1000/* 다음이미지로 넘겨질때 걸리는 시간 */
			});
		});
		</script>
			
	</head>
	<body class="no-sidebar is-preload">
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
							
							<!-- MyClass -->
								<header>
									<h2>수강중인 클래스</h2>
								</header>

								<%
									if(	entryPro.size() ==0){
								%>										
										<div class="slider-wrap1" style="text-align:center; margin:100px;">
											<td align="center">아직 수강중인 클래스가 없습니다</td>
										</div>									
								<% 
									}else{
								%>
									<div class="slider-wrap2">
								<%
									for (int i = 0; i < entryPro.size() ; i++) {
								%>								
									<div><a href="/HobbyDetail/<%=entryPro.get(i).getClass_id()%>.jsp?classId=<%=entryPro.get(i).getClass_id()%>"><img src="<%=entryPro.get(i).getLink() %>" alt=""></a></div>
								<%
									}
								%>
								</div>
								<%
								}%>
								<header >
									<h2>좋아요한 클래스</h2>
								</header>
								<%
									if(	likePro.size() ==0){
								%>										
										<div class="slider-wrap1" style="text-align:center; margin:100px;">
											<td>아직 좋아요한 클래스가 없습니다.</td>
										</div>									
								<% 
									}else{
								%>

									<div class="slider-wrap2">
								<%
									for (int i = 0; i < likePro.size() ; i++) {
								%>								
									<div><a href="/HobbyDetail/<%=likePro.get(i).getClass_id()%>.jsp?classId=<%=entryPro.get(i).getClass_id()%>"><img src="<%=likePro.get(i).getLink() %>" alt=""></a></div>
								<%
									}
								%>
								</div>
								<%
								}%>	
						</div>
				</section>
								

		

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>