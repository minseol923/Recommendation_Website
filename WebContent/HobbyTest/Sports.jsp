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
                        <p><strong><em class="underline">Sport</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/s1.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/s4.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/s5.jpg" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  내몸의 만병통치약 <br>
                     <strong>
                        <em class="underline"> “Sport”'</em>
                     </strong> <br>
                  </p>
                  <div class="img_area"><img src="/images/s6.jpg" alt=""></div>
                  <p class="text_detail_type2">
                     운동할 시간이 없다는 것은 핑계에 불과하다. <br>
                     건강과 체력은 물론 성취감, 자신감까지 얻을 수 있는 ‘운동’은 그야말로 만병통치약이라고 할 수 있다. 무엇이든 처음이 어려울 뿐, 막상 시작해보면 별것 아니라고 느껴질 것이다. 이번 주말에는 소파에서 몸을 툭툭 털고 일어나 스포츠를 시작해보는 것은 어떨까?

                  </p>
               </div>
               
               
         </div>
      </section>
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p> <em class="underline"><strong>Sport</strong></em><span class="web_view"><strong></strong>활용하기!</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="title_numbering">
                  <div class="numbering">#Sport </div>
                  <div class="title">
                     클라이밍
                  </div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/s2.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  스포츠클라이밍은 실내나 실외에 인공 벽을 설치해 즐기는 암벽등반 스포츠이다. <br>
                  암벽등반 시 나타나는 장애물 극복 방법으로 시작된 클라이밍은 인기 스포츠의 한 분야로 자리 잡게 되었다.클라이밍은 허벅지부터 종아리, 복부 등 온 몸의 근육을 사용하는 전신운동으로 체력 및 근력을 기를수있을 뿐만아니라 스트레스 해소와 집중력향상에도 좋은 효과를 가지고 있다.<br>
                   실내에 있기 때문에 날씨에 상관없이 언제든 혼자 즐길 수도 있고 친구들과 함께 즐길 수 있는 스포츠이다.
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#Sport </div>
                  <div class="title">
                     필라테스 
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/s3.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                           필라테스는 독일인 조셉 필라테스(Joseph H. Pilates)에 의해 개발된 운동으로 그의 이름을 따서 운동의 이름이 필라테스이다.<br>
                            필라테스는 근육의 활성도을 높여 근육의 균형을 잡아 올바른 자세를 유지시켜줌으로써 신체를 편안하고 자연스럽게 움직일 수 있도록 재교육 하는 운동요법입니다. 필라테스는 신체 균형성, 안정성과 유연성, 통증 감소에 효과적인 운동으로 최근 일반인 사이에서도 큰 인기를 끌고 있는 취미 중 하나로 자리 잡고 있다.

               </p>
                    
                    <div class="title_numbering">
                  <div class="numbering">#Sport </div>
                  <div class="title">
                     골프
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/s7.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  골프는 골프채로 골프공을 쳐서 코스상에 있는 구멍에 넣는 운동이다.<br>
                   또한 골프는 구기종목의 하나로, 국제적으로 많은 사람들이 여가와 스포츠로 즐기고 있다. 
                   골프는 과거 일부 부유층의 전유물인 귀족 스포츠라는 인식이 깊었으나, 점차 대중적인 스포츠로 발돋움하기 시작했다.
                    
            
           
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
                        <span class="list_cnt">나는 평소에<strong>운동신경</strong>이 있다!</span>
                     </li>
                     <li>
                        <span class="list_number">02</span>
                        <span class="list_cnt">무엇인가를 <strong>끈기 </strong>있게 한다!</span>
                     </li>
                     <li>
                        
                        <span class="list_number">03</span>
                        <span class="list_cnt"> <strong>체력</strong>이 부족함을 느낀다 !</span>
                     </li>
                     <li>
                        <span class="list_number">04</span>
                        <span class="list_cnt">실내 보단<strong>야외</strong>에서 활동하기를 좋아한다! </span>
                     </li>
                     <li>
                        <span class="list_number">05</span>
                        <span class="list_cnt"><strong>규칙적</strong>인 생활이 필요하다!</span>
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
                     
                     <span class="web_view"><strong><em class="underline">Sports 클래스</em></strong>를 </span>
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