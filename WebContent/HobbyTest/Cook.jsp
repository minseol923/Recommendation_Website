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
                        <p><strong><em class="underline">COOK</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/c1.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/c6.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/c7.jpg" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  다양한 요리로 떠나는 세계여행 <br>
                     <strong>
                        <em class="underline"> “COOK”'</em>
                     </strong> <br>
                  </p>
                  <div class="img_area"><img src="/images/c4.jpg" alt=""></div>
                  <p class="text_detail_type2">
                     집에서 세계의 많은 나라들을 여행하는 것 같은 느낌을 내고 싶다면 요리를 시작해보자. <br>
                     몇가지의 재료와 도구들만 있다면 한국, 중국, 일본, 태국, 유럽 등 다양한 나라를 여행하는듯한 느낌을 줄수있다.
                     <br>요리에 서툰 사람들도 배우다보면 근사한 요리를 완성 시킬 수 있을 것이다.
                  </p>
               </div>
               
               
      </section>
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p> <em class="underline"><strong>COOK</strong></em><span class="web_view"><strong></strong>활용하기!</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="title_numbering">
                  <div class="numbering">#COOK </div>
                  <div class="title">
                     한식
                  </div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/c2.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  한식은 대한민국에서 발달한 고유하고도 전통적인 음식을 뜻한다. 
                  <br>복잡한 궁중요리부터 지방의 특색 요리, 현대의 요리까지 재료와 조리법이 매우 다양하다. 쉽게 접할 수 있는 요리부터 생소한 요리까지 한식클래스를 통해 한국의 전통적인 음식을 배워보자
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#COOK </div>
                  <div class="title">
                     베이킹
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/c3.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                           디저트의 인기가 높아지면서 디저트 찾는 사람들이 많아졌다. <br>
                           이제는 특별한 날이 아닌 일상에서도 디저트를 자주 접할 수 있다.<br> 홈베이킹을 통해 다양한 디저트를 만들며 즐거움과 여유를 느껴보고,
                            자신만의 방식으로 디저트를 꾸미고 포장하여 직접 만든 디저트를 주변사람들에게 선물해 보자



               </p>
                    
                    <div class="title_numbering">
                  <div class="numbering">#ART </div>
                  <div class="title">
                     타이푸드
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/c5.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  태국의 요리. 구미권에서 유행하는 제3세계 에스닉 푸드(Ethnic Food)하면 떠올리는 제1순위이다.<br>
                  특징이라면 음식 자체는 가볍게 만들되 향신료를 많이 사용하여 향긋한 맛을 내는 것이다.
                    또한 소위 말하는 4가지 맛, 단맛, 신맛, 짠맛, 쓴맛 중 쓴맛을 빼고 다 사용한 뒤 거기에 매운맛을 섞는다. 이렇게 다양한 맛이 하나의 조화를 이룬다.
                   똠얌,솜땀,카오팟,팟타이가 대표적인 음식이다.
                    
                              
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
                        <span class="list_cnt"><strong>음식</strong>을 좋아한다!</span>
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
                     
                     <span class="web_view"><strong><em class="underline">Cook 클래스</em></strong>를 </span>
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