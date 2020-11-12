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
                        <p><strong><em class="underline">Photo & Video</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/p1.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/p4.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/p6.png" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  모든 순간을 기억하고싶다면 <br>
                     <strong>
                        <em class="underline"> “Photo & Video”'</em>
                     </strong> <br>
                  </p>
                  <div class="img_area"><img src="/images/p5.jpg" alt=""></div>
                  <p class="text_detail_type2">
                     누구나 살면서 멋진 순간을 남기고 싶어한다.<br>
                     어딜가나 모든 사람들이 카메라나 핸드폰을 이용하여 풍경이나 음식 사진을 찍고 있는 모습을 보일때가 많다. 하지만 사진의 구도나 위치에 따라 사진의 완성도는 달라진다. <br>
                     지금 당장 “인생샷”을 찍고 싶다면 사진과 비디오 취미에 관심을 가져보자.
                  </p>
               </div>
               
      </section>
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p> <em class="underline"><strong>Photo & Video</strong></em><span class="web_view"><strong></strong>활용하기!</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="title_numbering">
                  <div class="numbering">#Photo & Video </div>
                  <div class="title">
                     Photo
                  </div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/p2.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  사진은 기본적으로 실내에서 찍을수도 있지만 대부분 풍경사진을 찍기 위해 많은 이동을 하게 된다.<br>
                  그냥 걸었던 길을 카메라와 함께라면 같은 길이라도 집중하고 일상의 아름다움을 알게 될 수 있다. 더 많은 에너지를 소비하고 사진 찍는 즐거움을 얻고 싶다면 사진을 시작해보자
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#Photo & Video </div>
                  <div class="title">
                     Video
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/p3.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                           시간이 지날수록 전문 소프트웨어는 사용이 편리하고 직관적이게 변화하고 있다. <br>
                           이제는 컴퓨터를 어느 정도 쓸 줄 안다 수준의 실력이면 금방 배울 수 있을 정도이다. 사용자 친화적으로 변화되는 추세이며, 이전보다 더 쉽게 영상을 제작할 수 있게 되었다. 
                           하지만 아직 어려워 하는 사람들을 위해 다양한 영상들이 늘어나고 있다. 클래스를 듣고 따라하다보면 자신만의 영상을 만들 수 있을 것이다.

               </p>
                    
                    
                              
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
                        <span class="list_cnt">나는 평소에<strong>관찰 </strong>하는 것을 좋아한다!</span>
                     </li>
                     <li>
                        <span class="list_number">02</span>
                        <span class="list_cnt"> <strong>사진 </strong>찍는 것을 좋아한다!</span>
                     </li>
                     <li>
                        
                        <span class="list_number">03</span>
                        <span class="list_cnt"> <strong>누군가 </strong>를 찍어주는 것을 좋아한다!</span>
                     </li>
                     <li>
                        <span class="list_number">04</span>
                        <span class="list_cnt"><strong>sns</strong>를 많이 한다! </span>
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
                     
                     <span class="web_view"><strong><em class="underline">PNV 클래스</em></strong>를 </span>
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