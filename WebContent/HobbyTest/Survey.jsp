<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>MY HOB!</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
<link rel="stylesheet" href="../assets/css/Survey.css"/>
<link rel="stylesheet" href="../assets/css/main.css"/>
<style type="text/css"></style>
<script>
<%-- <%
   Object result = request.getAttribute("recommendation.getItemID()");   
%> --%>
</script>
</head>
<body class="homepage is-preload" style="overflow-x:hidden">
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
                                 <li><a href="/HobbyTest/mbti.jsp">취미 검사</a></li>
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
                                
                                    <li><a href="/Join/LoginForm.jsp">Login</a></li>
                                <li><a href="/Join/insertForm.jsp">Join</a></li>
                                  <!-- <li><a class="fas fa-key" href="/MyPage/Profile.jsp"></a>-->
                                  <!-- <li><a href="/MyPage/Profile.jsp"><img src="../images/gear.png"></a></li>-->
                                                                            
                        </ul>
                     </nav>
         
                  <!-- Logo -->
                     <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>
               </div>
            </section>
   
<!-- survey -->
<div class="wrap">

      <h1 class="likert-header">적성검사</h1>

      <form action="">

         <label class="statement">1. 야외활동을 즐겨한다.</label>

         <ul class='likert'>

            <!--  <div class="right-align">낮음</div> -->



            <li><input type="checkbox" name="likert" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert" value="1"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert" value="1"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert" value="1"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert" value="1"
               onclick="oneChk(this)"> <label>5</label></li>

            <!--   <div class="left-align">높음</div> -->

         </ul>



         <label class="statement">2. 단순 경험보다 결과물을 만들어내는 것을 좋아한다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert2" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert2" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert2" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert2" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert2" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">3. 주기적인 취미보단 단기간 체험을 해보는 것을 원한다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert3" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert3" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert3" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert3" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert3" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">4. 취미활동을 다방면으로 활용하는 것을 원한다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert4" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert4" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert4" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert4" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert4" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">5. 취미활동을 통한 자기계발을 원한다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert5" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert5" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert5" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert5" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert5" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">6. 섬세한 손놀림이 필요한 활동을 잘할 수 있다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert6" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert6" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert6" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert6" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert6" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">7. 외국영화나 드라마, 음악을 좋아한다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert7" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert7" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert7" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert7" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert7" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">8. 취미활동을 위한 과도한 비용지출은 부담스럽다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert8" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert8" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert8" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert8" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert8" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">9. 기술을 단기간에 빠르게 익힐 수 있다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert9" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert9" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert9" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert9" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert9" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">10. 손재주가 있는편이다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert10" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert10" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert10" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert10" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert10" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">11. 혼자 할 수 있는 활동이 좋다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert11" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert11" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert11" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert11" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert11" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <label class="statement">12. 꾸미는 것을 좋아한다.</label>

         <ul class='likert'>

            <li><input type="checkbox" name="likert12" value="1"
               onclick="oneChk(this)"> <label>1</label></li>

            <li><input type="checkbox" name="likert12" value="2"
               onclick="oneChk(this)"> <label>2</label></li>

            <li><input type="checkbox" name="likert12" value="3"
               onclick="oneChk(this)"> <label>3</label></li>

            <li><input type="checkbox" name="likert12" value="4"
               onclick="oneChk(this)"> <label>4</label></li>

            <li><input type="checkbox" name="likert12" value="5"
               onclick="oneChk(this)"> <label>5</label></li>

         </ul>



         <!-- survey를 호출하기 전에 chkCheckbox를 호출해서 체크박스 여부를 확인 -->

         <div class="buttons">

            <button class="clear">Clear</button>

            <button type="button" name="action" onClick="chkCheckbox()">Submit</button>

         </div>

      </form>

   </div>

   <!-- partial -->



   <script>
      function survey() {

         var hobby = [ "스포츠", "사진/영상", "DIY", "음악", "미술", "요리", "언어" ];

         var a = Math.floor(Math.random() * hobby.length)

         /* window.alert("당신에게 " + hobby[a] + " 취미를 추천해드립니다."); */
         if(hobby[a]=="스포츠"){
            location.href="/HobbyTest/Sports.jsp";
         }else if(hobby[a]=="사진/영상"){
            location.href="/HobbyTest/Pnv.jsp";
         }else if(hobby[a]=="DIY"){
            location.href="/HobbyTest/Diy.jsp";
         }else if(hobby[a]=="음악"){
            location.href="/HobbyTest/Music.jsp";
         }else if(hobby[a]=="미술"){
            location.href="/HobbyTest/Art.jsp";
         }else if(hobby[a]=="요리"){
            location.href="/HobbyTest/Cook.jsp";
         }else if(hobby[a]=="언어"){
            location.href="/HobbyTest/Language.jsp";
         }

      }

      /**체크박스를 체크를 했는지 확인 **/

      function chkCheckbox() {
         var likert = document.getElementsByName('likert');
         var likert_chk = false;
         for (var i = 0; i < likert.length; i++) {
            if (likert[i].checked) {
               likert_chk = true;
               break;
            } else {
               likert_chk = false;
            }
         }

         var likert2 = document.getElementsByName('likert2');
         var likert_chk2 = false;
         for (var i = 0; i < likert2.length; i++) {
            if (likert2[i].checked) {
               likert_chk2 = true;
               break;
            } else {
               likert_chk2 = false;
            }
         }

         var likert3 = document.getElementsByName('likert3');
         var likert_chk3 = false;
         for (var i = 0; i < likert3.length; i++) {
            if (likert3[i].checked) {
               likert_chk3 = true;
               break;
            } else {
               likert_chk3 = false;

            }
         }

         var likert4 = document.getElementsByName('likert4');
         var likert_chk4 = false;
         for (var i = 0; i < likert4.length; i++) {
            if (likert4[i].checked) {
               likert_chk4 = true;
               break;
            } else {
               likert_chk4 = false;
            }
         }

         var likert5 = document.getElementsByName('likert5');
         var likert_chk5 = false;
         for (var i = 0; i < likert5.length; i++) {
            if (likert5[i].checked) {
               likert_chk5 = true;
               break;
            } else {
               likert_chk5 = false;
            }
         }

         var likert6 = document.getElementsByName('likert6');
         var likert_chk6 = false;
         for (var i = 0; i < likert6.length; i++) {
            if (likert5[i].checked) {
               likert_chk6 = true;
               break;
            } else {
               likert_chk6 = false;
            }

         }

         var likert7 = document.getElementsByName('likert7');
         var likert_chk7 = false;
         for (var i = 0; i < likert7.length; i++) {
            if (likert7[i].checked) {
               likert_chk7 = true;
               break;
            } else {
               likert_chk7 = false;
            }
         }

         var likert8 = document.getElementsByName('likert8');
         var likert_chk8 = false;
         for (var i = 0; i < likert8.length; i++) {
            if (likert8[i].checked) {
               likert_chk8 = true;
               break;
            } else {
               likert_chk8 = false;
            }
         }

         var likert9 = document.getElementsByName('likert9');
         var likert_chk9 = false;
         for (var i = 0; i < likert9.length; i++) {
            if (likert9[i].checked) {
               likert_chk9 = true;
               break;
            } else {
               likert_chk9 = false;
            }
         }

         var likert10 = document.getElementsByName('likert10');
         var likert_chk10 = false;
         for (var i = 0; i < likert10.length; i++) {
            if (likert10[i].checked) {
               likert_chk10 = true;
               break;
            } else {
               likert_chk10 = false;
            }
         }

         var likert11 = document.getElementsByName('likert11');
         var likert_chk11 = false;
         for (var i = 0; i < likert11.length; i++) {
            if (likert11[i].checked) {
               likert_chk11 = true;
               break;
            } else {
               likert_chk11 = false;
            }
         }
         var likert12 = document.getElementsByName('likert12');
         var likert_chk12 = false;
         for (var i = 0; i < likert12.length; i++) {
            if (likert12[i].checked) {
               likert_chk12 = true;
               break;
            } else {
               likert_chk12 = false;
            }
         }
         if (likert_chk && likert_chk2 && likert_chk3 && likert_chk4
               && likert_chk5 && likert_chk6 && likert_chk7 && likert_chk8
               && likert_chk9 && likert_chk10 && likert_chk11
               && likert_chk12)
            survey();
         else
            alert("모든 설문에 체크하세요.");
      }

      /** 체크박스를 체크를 했는지 확인 **/
      function oneChk(chk) {
         var obj = document.getElementsByName(chk.name);
         for (var i = 0; i < obj.length; i++) {
            if (obj[i] != chk) {
               obj[i].checked = false;
            }
         }
      }
   </script>
                      <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                     <script src="assets/js/jquery.min.js"></script>
                     <script src="assets/js/jquery.dropotron.min.js"></script>
                     <script src="assets/js/browser.min.js"></script>
                     <script src="assets/js/breakpoints.min.js"></script>
                     <script src="assets/js/util.js"></script>
                     <script src="assets/js/main.js"></script>
                     <!-- partial -->
  </div>
</body>
</html>