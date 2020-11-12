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
                        <p><strong><em class="underline">Language</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/l4.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/l7.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/l6.jpg" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  글로벌시대에 필요한 <br>
                     <strong>
                        <em class="underline"> “Language”</em>
                     </strong> <br>
                  </p>
                  <div class="img_area"><img src="/images/l5.jpg" alt=""></div>
                  <p class="text_detail_type2">
                  글로벌시대에 생존하려면 새로운 언어를 배우는 것은 필수적이다.<br>
                   영어를 쓰는 인구의 숫자는 세계2위를 차지하고 있으며, 아마도 영어를 쓰는 인구의 분포율은 세계 1위를 차지하고 있을 것이다.<br>
                    이렇게 많은 국가에서 영어가 통용되고 있으며, 영어를 배운다면 많은 국가에서 언어 문제로 고생할 가능성이 줄어든다는 이점이 있다.
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
                  <div class="numbering">#Language </div>
                  <div class="title">
                     영어
                  </div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/l1.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  글로벌시대에 생존하려면 새로운 언어를 배우는 것은 필수적이다.<br>
                   영어를 쓰는 인구의 숫자는 세계2위를 차지하고 있으며, 아마도 영어를 쓰는 인구의 분포율은 세계 1위를 차지하고 있을 것이다.<br>
                    이렇게 많은 국가에서 영어가 통용되고 있으며, 영어를 배운다면 많은 국가에서 언어 문제로 고생할 가능성이 줄어든다는 이점이 있다. 
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#Language </div>
                  <div class="title">
                     언어를 배워야하는이유?
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/l2.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                           언어를 배우면 편리함 뿐만 아니라 인터넷 시대에 정보의 양과 질이 달라진다는 점도 있다. <br>
                           통계에 의하면 55% 의 인터넷 웹페이지는 영어로 이루어져 있다고 합니다. 영어를 익히고 있다면 그만큼 많고 질좋은 정보를 쉽게 접할 수 있다.


               </p>
                    
                    <div class="title_numbering">
                  <div class="numbering">#Language  </div>
                  <div class="title">
                     새로운도전
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/l3.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  모국어가 아닌 다른 언어를 배운다는 것은 매우 힘들고 어려운 일이다.<br>
                   하지만 새로운 언어를 배워 많은 나라의 사람들과 교류할 수 있으며 , 다른 문화와 역사들도 알 수 있다.<br>
                    뿐만 아니라 언어를 배우는 것은 자신감을 키워줄 수 있다. 더 많은 경험을 해보고 싶다면 새로운 언어를 배워보는 것은 어떨까?        
                              
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
                        <span class="list_cnt">나는 평소에<strong>다양한 문화</strong>에 관심이 있다!</span>
                     </li>
                     <li>
                        <span class="list_number">02</span>
                        <span class="list_cnt">성격이 <strong>외향적 </strong>이다!</span>
                     </li>
                     <li>
                        
                        <span class="list_number">03</span>
                        <span class="list_cnt"> <strong>이야기</strong>하는 것을 좋아한다!</span>
                     </li>
                     <li>
                        <span class="list_number">04</span>
                        <span class="list_cnt"><strong>여행</strong>을 좋아한다! </span>
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
                     
                     <span class="web_view"><strong><em class="underline">Language 클래스</em></strong>를 </span>
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