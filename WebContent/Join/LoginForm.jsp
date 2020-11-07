<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../assets/css/LoginStyle.css" type="text/css"/>
<link rel="stylesheet" href="../assets/css/main.css" type="text/css"/>

</head>
<body>

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
                     </nav>

               </div>
            </section>
    <div align="center">        
    <div id="l_content">
    <section class="l_container">
    <section class="l_wrapper">
    
    <div class="l_header">
        <div class="l_logo">
            <span>LOGIN</span>
        </div>
           <!-- <h1>Welcome back!</h1> --> 
      
    </div>
    
    <section class="l_main-content">
	   <form method="post" action ="../Join/LoginPro.jsp">
        
	
	       <table>
		      <tr>
			     <td>아이디</td>
		      <tr>
		      <tr>
			     <td><input type="text" name="id" placeholder="아이디를 입력해주세요."></td>
		      </tr>
        
            
        
		      <tr>
			     <td>비밀번호</td>
		      </tr>
		      <tr>
			     <td><input type="password" name="passwd" placeholder="비밀번호를 입력해주세요."></td>
		      <tr>
		      <tr>
			     <td>
				        <input type="submit" id="login" value="로그인" ><br>					
			     </td>
		      </tr>
	       </table>
        </form>
    </section>
        
    <footer>
     
      <p><input type="button" id="join" value="회원가입" onClick="location.href='../Join/insertForm.jsp'"></p>
   
    </footer>
        
    </section>
    </section>
    </div>
 </div>
</body>
</html>