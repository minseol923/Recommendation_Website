<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hobby</title>
<link rel="stylesheet" href="/assets/css/Recommend.css">
<link rel="stylesheet" href="/assets/css/main.css">
</head>
<body>
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
<div id="wrap">
  <div class="con-box">
    <div class="vod_detail_area">
       <section class="vod_detail_lecture_area">
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p>추천 취미는<span class="web_view"> </span></p>
                        <p><strong><em class="underline">MUSIC</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/m4.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/m5.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/m6.jpg" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  사람과 항상 함께하는 <br>
                     <strong>
                        <em class="underline"> “MUSIC”'</em>
                     </strong> <br>
                  </p>
                  <div class="img_area"><img src="/images/m8.jpg" alt=""></div>
                  <p class="text_detail_type2">
                     음악은 진동 주파수의 세기마다 다른 소리가 나는 것을 듣기 좋게 조합해서 박자, 가락, 음성 등을 갖가지 형식으로 조화하고 결합하는 예술이다.
                     음악으로 행복해지거나 어려운 상황에서 힘이 되어주는 음악은 우리의 삶에 좋은 영향을 미치고 있다.
                  </p>
               </div>
               
      </section>
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p> <em class="underline"><strong>MUSIC</strong></em><span class="web_view"><strong></strong>활용하기!</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="title_numbering">
                  <div class="numbering">#MUSIC </div>
                  <div class="title">
                     바이올린
                  </div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/m2.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  유럽의 대표적인 찰현악기이다.<br>
                   바이올린 족 현악기 중 가장 높은 음을 내며, 음역대가 넓고, 빠른 속주부터 서정적 멜로디까지 다양한 연주가 가능하다.
                   인기가 많은 악기중 상위권에 속하며, 연주할 때 자세가 우아하고 절도 있어 보이기에 인기가 많다.
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#MUSIC </div>
                  <div class="title">
                     피아노
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/m3.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                           악기의 황제라고 불리는 세계에서 가장 잘 알려지고 최고의 인기를 누리는 악기다. <br>
                           서양 악기의 대표적인 악기이며, 대한민국에서도 보편적으로 가장 널리 알려진 악기다.<br>
                            배우기는 쉬우나 마스터하기 가장 어려운 악기로 피아노는 모든 악기를 통틀어 진입장벽이 가장 낮은 악기이다. 
                            건반을 누르기만 하면 해당하는 음이 바로 나오기 때문에 많은 사람들이 쉽게 시작할 수 있다는 장점이 있다. 



               </p>
                    
                    <div class="title_numbering">
                  <div class="numbering">#MUSIC </div>
                  <div class="title">
                     기타
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/m7.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  기타는 클래식 음악뿐만 아니라 재즈, 록, 팝 음악 등 다양한 장르에 사용된다. 다른 악기들 보다 가격이 낮아 쉽게 접근하기 쉽다는 장점이있다.<br>
                       기타의 종류로는 통기타, 어쿠스틱 기타, 베이스 기타, 일렉 기타, 클래식 기타등 다양한 종류가 있으며 자신이 원하는 종류를 골라 배워보자.
               
               </div>
               
               
      </section>
      
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text static">
                  <p><strong>이런분께</strong><span class="web_view"><strong><em class="underline">추천</em></strong>합니다</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="box_list">
                  <ul>
                     <li>
                        <!--<span class="list_thumb"><img src="/images/d1.jpg" alt=""></span>-->
                        <span class="list_number">01</span>
                        <span class="list_cnt">나는 평소에<strong> 손재주 </strong>가 있다!</span>
                     </li>
                     <li>
                        <span class="list_number">02</span>
                        <span class="list_cnt">무엇인가를 <strong>끈기 </strong>있게 한다!</span>
                     </li>
                     <li>
                        
                        <span class="list_number">03</span>
                        <span class="list_cnt"> <strong>박자감각</strong>이 좋다!</span>
                     </li>
                     <li>
                        <span class="list_number">04</span>
                        <span class="list_cnt"><strong>음악</strong>을 자주 접한다. </span>
                     </li>
                   
                  </ul>
               </div>
               
            </div>
            
         </div>
      </section>
      
   
      
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text static">
                  <p>
                     <strong>&lsquo;MY HOB!&rsquo;  </strong>에서 <span class="web_view"> 다양한</span>
                     
                     <span class="web_view"><strong><em class="underline">Music 클래스</em></strong>를 </span>
                     <span class="web_view"><strong><em class="sub_title">수강하세요</em></strong></span>
                  </p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="text_detail box">
                  추천해드린 취미가 마음에 드신다면 <strong>‘MY HOB!’사이트</strong>에서, 새롭게 취미를 만들어 보세요. <br>
                        <strong>회원가입</strong>을 하시면 다양한 소식을 받아볼 수 있어요. 여러분들에게 딱 맞는 취미를 찾으시길 바랍니다!
               </div>
            </div>
            </div>
      </section>
    </div>
  </div>
</div>
</div>
</body>
</html>