<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>MY HOB! Q&A게시판</title>
	<meta charset="utf-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
	<link rel="stylesheet" href="/assets/css/free_board.css">
</head>
<body class="homepage is-preload">
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
      		
      		<!-- Q&A -->
      	<section id="main"> 
			<div class="container">
		 		<div id="content">
		 		<h2>FAQ</h2>
		 	
	  <div class="accordion">
	    <div class="accordion-item">
      <button id="accordion-button-1" aria-expanded="false">
	      <span class="accordion-title">Q 취미 클래스를 등록하고 싶은데 어떻게 해야하죠?</span>
	      <span class="icon" aria-hidden="true"></span>
      </button>
      <div class="accordion-content">
        <p><h5>A. 포트폴리오와 클래스 정보를 첨부하여 MY HOB! 메일로 보내주시면 심의를 걸쳐 등록 해드립니다.</h5></p>
      </div>
    </div>
    <div class="accordion-item">
      <button id="accordion-button-2" aria-expanded="false">
	      <span class="accordion-title">Q 비회원으로도 이용할 수 있나요?</span>
	      <span class="icon" aria-hidden="true"></span>
      </button>
      <div class="accordion-content">
        <p><h5>A.활동로그와 수강중인 클래스 정보등을 제공등을 이유로 비회원은 이용이 불가합니다.</h5></p>
      </div>
    </div>
    <div class="accordion-item">
      <button id="accordion-button-3" aria-expanded="false">
      	<span class="accordion-title">Q 자유게시판과 정보게시판의 차이점은 무엇인가요?</span>
      	<span class="icon" aria-hidden="true"></span>
      </button>
      <div class="accordion-content">
         <p><h5>A.자유게시판은 취미에 대한 이야기를 나눌 수 있고 정보게시판은 공모전등의 정보를 제공합니다.</h5></p>
      </div>
    </div>
    <div class="accordion-item">
      <button id="accordion-button-4" aria-expanded="false">
      	<span class="accordion-title">Q 취미클래스 환불 규정이 어떻게 되나요? </span>
      	<span class="icon" aria-hidden="true"></span>
      </button>
      <div class="accordion-content">
         <p><h5>A. 수강시작일 전에 환불 요청시 전액 환불 처리됩니다.
         		      수강시작일 이후부터 환불 요청일 기준으로 부분 환불이 가능합니다.
          </h5></p>
      </div>
    </div>
    <div class="accordion-item">
      <button id="accordion-button-5" aria-expanded="false">
      	<span class="accordion-title">Q 기존 취미클래스에 없는 새로운 취미 클래스를 듣고싶어요</span>
      	<span class="icon" aria-hidden="true"></span>
      </button>
      <div class="accordion-content">
         <p><h5>A. 새로운 취미 클래스는 정기적으로 추가됩니다. 듣고 싶은 취미클래스에 대해 문의 주세요. </h5></p>
      </div>
    </div>
  </div>
</div>

				
		<!-- Scripts -->
			<script  src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../assets/js/FAQ.js"></script>
			
</div>
</section>
</div>
</body>
</html>