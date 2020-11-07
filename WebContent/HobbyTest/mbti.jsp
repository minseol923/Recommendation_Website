<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MBTI</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>

<link rel="stylesheet" href="../assets/css/mbti.css">
<link rel="stylesheet" href="../assets/css/main.css">
</head>

<div class="homepage is-preload">
		<div id="page-wrapper">

			
			<!-- Header -->
            <section id="header">
               <div class="container">

                  <!-- Logo -->
                     <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>

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

               </div>
            </section>
				
 		<div id="my-Sidebar">
        	<h2>취미탐색</h2>
        		<ul>
         		  	<li><a href="/HobbyTest/Survey.jsp" >취미 검사</a></li>
        		  	<li><a href="/HobbyTest/mbti.jsp" >MBTI</a></li>
        		</ul>
      	</div>
      	
		 	
		 	
		<main class="intro-section">
			
  <div class="m-container">
  <h2>MBTI</h2>
    <div class="grid">
      <div class="column-xs-12">
        <ul class="m_slider">
          <li class="slider-item active">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                    <h1 class="m_title"><span class="underline" onclick="location.href='https://www.16personalities.com/ko'">MBTI검사</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="../images/mbti-1.jpg">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="m_title"><span class="underline">MBTI</span></h1>
                      </a>
                    </div>
                    <form action="" name="mbti">당신의 MBTI는?</p>
                   		<input type="text" id="my_mbti" name="my_mbti" style=width:100%; placeholder="MBTI를 대문자로 입력해주세요.">
                  		<input type="button" value="입력" onClick="mbtiCheck()"><br>
                  		<span id='mbtiMsg' value='test용'/>

                   </form>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="slider-item">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                    <h1 class="m_title"><span class="underline">Explore Kyoto</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/Pz3EHf-KJfc">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="m_title"><span class="underline">Explore Kyoto</span></h1>
                      </a>
                    </div>
                    <p class="description">Kyoto is famous for its numerous classical Buddhist temples, gardens, imperial palaces, Shinto shrines and traditional wooden houses.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="slider-item">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                     <h1 class="m_title"><span class="underline">Explore Osaka</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/peYW3VwICpE">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="m_title"><span class="underline">Explore Osaka</span></h1>
                      </a>
                    </div>
                    <p class="description">Osaka is a large port city and commercial center known for its modern architecture, nightlife and hearty street food.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
            
          <li class="slider-item">
            <div class="grid vertical">
              <div class="column-xs-12 column-md-2 hide-mobile">
                <div class="intro">
                  <a href="#">
                    <h1 class="m_title"><span class="underline">Explore Hokkaido</span></h1>
                  </a>
                </div>
              </div>
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                  <img src="https://source.unsplash.com/VmeOZQjTVGE">
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                    <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="m_title"><span class="underline">Explore Hokkaido</span></h1>
                      </a>
                    </div>
                    <p class="description">Hokkaido, the northernmost of Japan’s main islands, is known for its volcanoes, natural hot springs ("onsen") and ski areas.</p>
                  </div>
                </div>
              </div>
            </div>
          </li>
    
          </div>
      </div>
    </div>
  </div>
</main>
   
<!-- partial -->
  <script  src="../assets/js/mbti.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script>
function mbtiCheck(){
	var result=document.getElementById('my_mbti').value;
	
	var msg="";
	if(result=='INTJ'){
		msg = "언어";
	}else if(result=='INTP'){
		msg = "예술";
	}else if(result=='INFJ'){
		msg = "DIY";
	}else if(result=='INFP'){
		msg = "예술";
	}else if(result=='ISTJ'){
		msg = "DIY";
	}else if(result=='ISFJ'){
		msg = "사진/영상";
	}else if(result=='ISTP'){
		msg = "요리";
	}else if(result=='ISFP'){
		msg = "예술";
	}else if(result=='ENTJ'){
		msg = "스포츠";
	}else if(result=='ENTP'){
		msg = "사진/영상";
	}else if(result=='ENFJ'){
		msg = "스포츠";
	}else if(result=='ENFP'){
		msg = "음악";
	}else if(result=='ESTJ'){
		msg = "언어";
	}else if(result=='ESFJ'){
		msg = "스포츠";
	}else if(result=='ESTP'){
		msg = "음악";
	}else if(result=='ESFP'){
		msg = "음악";
	}else
		msg1="정확한 MBTI를 입력해주세요.";
	
	document.getElementById("mbtiMsg").innerHTML = "당신에게 " +msg+" 관련된 취미를 추천해드립니다.";
	document.getElementById("mbtiMsg").innerHTML = msg1;
}
</script>
</div>
	
</body>
</html>