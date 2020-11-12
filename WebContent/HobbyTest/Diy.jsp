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
                        <p><strong><em class="underline">DIY</em> <span class="web_view">입니다.</span></strong></p>
                  
               </div>
            </div>
            <div class="detail-col-right">
               <div class="img_area">                  
                  <figure class="img_list">
                     <img src="/images/d3.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
               </div>
               
               <div class="img_area">                  
                  <figure class="img_list double">
                     <img src="/images/d4.jpg" alt="">
                     <figcaption><!-- 이미지에 대한 설명--></figcaption>
                  </figure>
                  <figure class="img_list double">
                     <img src="/images/d1.jpg" alt="">
                  </figure>
               </div>
               

               <div class="another_box">
                  <p class="vod_small_title">
                  바야흐로 <br>
                     <strong>
                        <em class="underline">"D.I.Y(Do It Yourself)"</em>
                     </strong>의 시대이다. <br>
                  </p>
                  <div class="img_area"><img src="/images/d7.jpg" alt=""></div>
                  <p class="text_detail_type2">
                     'DIY'란 말 그대로 직접한다는 뜻으로, 최근 '셀프인테리어', '홈 퍼니싱' 등이 유행하면서 'DIY'라는 말도 인기 키워드가 되었다. TV에서도 다양한 프로그램을 통해 인기를 끌고 있는데, 우리말로 '다이' 또는 '디아이와이'라고 불리는 활동의 종류와 취미로의 활용 방법을 알아보자! 
                  </p>
               </div>
               
      </section>
      <section>
         <div class="vod-detail-row">
            <div class="detail-col-left">
               <div class="box-text">
                  <p> <em class="underline"><strong>DIY</strong></em><span class="web_view"><strong></strong>활용하기!</span></p>
               </div>
            </div>
            <div class="detail-col-right">
               <div class="title_numbering">
                  <div class="numbering">#DIY 다이어리 </div>
                  <div class="title">
                     자신만의 스케줄러, 다이어리를 <br> 알록달록 꾸며보자
                  </div>
               </div>
               
               <!--연혁-->
               <div class="img_area">
                     <img src="/images/d2.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  다이어리 꾸미기의 줄임말로 흔히 '다꾸'라고 불리운다. 다이어리 꾸미기를 취미로 가진 사람들을 '다꾸족' 혹은 '다꾸러' 라고 일컫는다. 신박한 '다꾸템'과 손글씨로 꾸민 다이어리를 태그하여 자신의 sns 에 올리고 꿀팁을 공유하기도 한다.<br>
                        <br>다양한 스티커와 메모지, 마스킹테이프, 스탬프등 여러가지 다꾸템을 구경하며 구매하는 재미 또한 느낄 수 있다.
                        여행 다이어리, 영화 후기, 아이돌 덕질 등 본인의 휘향에 따라 더욱 다채롭게 즐길 수있다.
               </p>
               <!--//연혁-->
               
               <div class="title_numbering">
                  <div class="numbering">#DIY </div>
                  <div class="title">
                     인테리어
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/d8.jpg" alt="">
                  </div>
                  <p class="text_detail">
               
                            사람들은 집에서 휴식을 취하고 에너지를 얻는다. 집은 ‘나’를 표현하는 수단이 되기도 한다. 사람들이 시간과 정성을 들여 셀프 인테리어를 하는 이유다.<br><br>
                            자신의 라이프 스타일에 맞는 차별화된 공간을 만들 수 있고, 감성적으로는 나만의 공간을 내 손으로 꾸민다는 보람을 느낄 수 있다.



               </p>
                    
                    <div class="title_numbering">
                  <div class="numbering">#DIY 패션 </div>
                  <div class="title">
                     내가 입는 것들을 <br>직접 만드는 성취감
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/d9.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  재봉틀을 이용한 미싱이나 바느질, 뜨게질 부터 간단한 리폼까지 개성있는 옷을 만들어 입을 수 있다. 또한 한땀 한땀 직접 만든 것을 선물하기에도 좋은 취미이다. 
                    
                     <div class="title_numbering">
                  <div class="numbering">#DIY  </div>
                  <div class="title">
                     공예
                  </div>
               </div>
               <div class="img_area">
                     <img src="/images/d10.jpg" alt="">
                  </div>
                  <p class="text_detail">
                  '나만의 가구'를 가질 수 있다는 자체만으로도 큰 매력이 있다. 인기 가구의 절반도 안 되는 가격에 자신만의 독특한 디자인을 담아 개성 있는 가구를 만들어낼 수 있다면 경제적으로도 큰 이득이다.<br><br>
                        가족들과 함께 집에서 필요한 가구를 직접 조립, 칠하는 과정에서 가족 간의 유대도 좋아지게 될 것이다.이외에도 사랑하는 자녀에게 친환경 가구로 직접 방을 꾸며 준다면 믿고 안심할 수 있지 않을까?
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
                        <span class="list_cnt"><strong>또 뭐가 있을까 </strong>???</span>
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
                     
                     <span class="web_view"><strong><em class="underline">DIY 클래스</em></strong>를 </span>
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