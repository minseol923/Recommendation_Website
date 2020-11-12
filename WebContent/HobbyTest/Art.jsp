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
                           <li><a href="/AboutUs/AboutUs.jsp"><span>About Us</span></a></li>
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
                        <p><strong><em class="underline">ART</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/a1.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/a7.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/a8.jpg" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  누구나 한번 쯤 도전해보고싶은 취미  <br>
                     <strong>
                        <em class="underline"> “드로잉”'</em>
                     </strong> <br>
                  </p>
                  <div class="img_area"><img src="/images/a5.jpg" alt=""></div>
                  <p class="text_detail_type2">
                     누구나 한번 쯤 도전해보고싶은 취미 “드로잉” <br>
                     드로잉은 연필 뿐 만아니라 색연필,마카,펜,물감 등 다양한 재료를 이용하여 자신만의 그림을 그릴 수 있다. 
                     그림에 소질이 없더라도 클래스를 들으면서 실력을 키워 나가면 어느새 멋진 작품을 그리고 있는 자신을 발견할 수 있지 않을까? 
                  </p>
               </div>
      </section>
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p> <em class="underline"><strong>ART</strong></em><span class="web_view"><strong></strong>활용하기!</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="title_numbering">
                  <div class="numbering">#ART </div>
						<div class="title">
							IPaid Drawing
						</div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/a4.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  아이패드,펜슬,프로 크리에이트앱 만 가지고 있다면 지금 바로 드로잉을 시작할 수 있다. <br>
                  어플에 있는 다양한 툴을 배우고 브러쉬 설정과 팁을 배워 사물부터 인물까지 색칠하거나 그려볼 수 있다. 
                  <br>좋아하는 인물의 사진을 따라 그려보거나 직접 캐릭터를 만들어 태블릿 내의 다이어리 스티커로 사용해보는 것도 추천한다. 
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#ART </div>
                  <div class="title">
                     오일파스텔
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/a2.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                            오일파스텔의 다양한 색상을 이용하여 그림을 그려보는 것은 어떨까.<br>
                               평소 그림을 그리는데 어려움을 겪었던 분들도 오일파스텔 하나만 있다면 주제부터 이미지까지 직접 정하여 자신이 그리고 싶었던 풍경화부터 명화 까지 다양한 색감을 이용하여 재미있게 완성할 수 있을 것이다.

               </p>
                    
                    <div class="title_numbering">
                  <div class="numbering">#ART </div>
                  <div class="title">
                     유화
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/a3.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  유화 또는 유채화는 서양미술의 대표적 형태 중 하나로, 기름으로 갠 물감(안료)을 사용하여 그리는 서양화의 한 기법이다.
                   유화물감의 깊고 은은한 색채의 매력으로 많은 사랑을 받고 있다. 
                  뿐만 아니라 여러번 덧칠도 가능하며 물감 특유의 질감을 이용한 표현도 수월한 방식이다.
                    
                     <div class="title_numbering">
                  <div class="numbering">#ART </div>
                  <div class="title">
                     마카 드로잉
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/a6.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  처음 그림을 그리는 사람도 마카로 쓱쓱 그리면 순식간에 그림이 완성된다.<br>
                   마카는 뚜껑이 있는 펜 타입이라 관리와 휴대성도 좋으며 다양한 굵기와 선 느낌을 낼 수 있다.
                   <br> 종이와 마카만 있다면 어디든지 즉석에서 그릴 수 있는 장점이 있다.
               </p>
                    
            </div>            
                              
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
                        <span class="list_cnt"> <strong>결과물</strong>을 만들어내는 것을 좋아한다!</span>
                     </li>
                     <li>
                        <span class="list_number">04</span>
                        <span class="list_cnt">야외보단<strong>실내</strong>에서 활동하기를 좋아한다! </span>
                     </li>
                     <li>
                        <span class="list_number">05</span>
                        <span class="list_cnt"><strong>미술</strong>을 좋아한다!</span>
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
                     
                     <span class="web_view"><strong><em class="underline">Art 클래스</em></strong>를 </span>
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