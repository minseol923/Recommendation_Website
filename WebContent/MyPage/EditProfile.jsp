<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Test.user"%>
<jsp:useBean id="userjoin" class="Test.userDB"/>
 <jsp:useBean id="bean" class="Test.user"/>
 <%
	String id =(String)session.getAttribute("id");
	user use = userjoin.getData(id);
	boolean b = userjoin.modifyData(bean);
%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="../assets/css/MyPage.css" />
	

	</head>
	<body class="homepage is-preload" style="overflow-x:hidden">
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
            
            
			<!-- 사이드 바 -->
			<div id="my-Sidebar">
        		<h2>마이페이지</h2>
        		<ul>
         		  	<li><a href="../MyPage/Profile.jsp" title="프로필">프로필</a></li>
        		  	<li><a href="../MyPage/MyClass.jsp" title="내 클래스">내 클래스</a></li>
         	  	 	<li><a href="../MyPage/EditProfile.jsp" title="회원 정보 관리">회원 정보 관리</a></li>
        		</ul>
      		</div>
      
		<!-- Main -->
				 <section id="main">
					<div class="container">
						<div id="content">
							
							<!-- EditProfile -->
							<form method="post" action="/MyPage/modifyPro.jsp">
									<header>
										<h2>회원 정보 수정</h2>
									</header>
									<table>
								            <tr>
								                <td align="center" width ="150"><b>아이디</b></td>
								                <td>
								                	<input type="text" name="my_name" readonly size="20" value=<%=use.getId()%> >
								                </td>
								            </tr>
								            <tr>
								                <td align="center" width ="150"><b>비밀번호</b></td>
								                <td>
								                	<input type="password" name="passwd" maxlength="16"  value=<%=use.getPasswd()%> >
								               		(영문 대소문자/숫자/특수문자 중 2가지 이상 조합,8~18자)
								               	</td>
								            </tr>
								            
								            <tr>
								                <td align="center"><b>비밀번호확인</b></td>
								                <td>
								                	<input type="password" name="passwd_check" maxlength="16"  value=<%=use.getPasswd()%>>
								                </td>
								            </tr>
								            
								             <tr>
								                <td align="center"><b>이름</b></td>
								                <td>
								                	<input type="text" name="name" size="20"  value=<%=use.getName()%>>
								                </td>
								            </tr>
								            
								            <tr>
								                <td align="center"><b>이메일</b></td>
								                <td>
								                	<input type="text" name="email" value=<%=use.getEmail()%>> <!-- @ -->
								                	<%-- <input type='text' name="email_dns" value="<%=use.getEmail()%>"> 
											              <select id ="emailaddr" name="emailaddr">
											                 <option value="">직접입력</option>
											                 <option value="daum.net">daum.net</option>
											                 <option value="gmail.com">gmail.com</option>
											                 <option value="hanmail.net">hanmail.net</option>
											                 <option value="naver.com">naver.com</option>
											                 <option value="nate.com">nate.com</option>
											              </select> --%>
											    </td>
								            </tr>
								            
								            <tr>
								            	<td align="center"><b>주소</b></td>
								            	<td>
								            		<!-- <input type="text" name="address" id="address" size="6">
								            		<input type="button" name="zipcode" id="zipcode" value="우편번호"><br> -->
								                    <input type="text" name="add1" id="add1" size="25" value="<%=use.getAddress()%>" >기본주소<br>
								                    <!-- <input type="text" id="add2" id="add2" size="25"> 나머지 주소 -->
												</td>
											</tr>
											
											 <%-- <tr>
								                <td align="center"><b>일반전화</b></td>
								                <td>
								               		 <select name="homephone1" id="homephone" style="width:70px;">
								               			  <option value="선택">선택</option>
								               		 	  <option value="02">02 </option>
								                          <option value="031">031 </option>
								                          <option value="032">032</option>
								                          <option value="033">033 </option>
								                          <option value="041">041 </option>
								                          <option value="042">042 </option>
								                          <option value="043">043 </option>
								                          <option value="051">051 </option>
								                          <option value="052">052 </option>
								                          <option value="053">053 </option>
								                          <option value="054">054 </option>
								                          <option value="055">055 </option>
								                          <option value="061">061 </option>
								                          <option value="062">062 </option>
								                          <option value="063">063 </option>
								                          <option value="064">064 </option>
								                	</select>-
								                	<input type="text" name="homephone2" id="homephone">-
								                	<input type="text" name="homephone3" id="homephone">
								                </td>
								            </tr>
								            
								          --%>
								         
								            <tr>
								                <td align="center"><b>생년월일</b></td>
								                <td>
								                	<input type="text" name="birth" size="10" value=<%=use.getBirth()%>>
								                	<%-- <input type="text" name="birth" size="10" value="<%=use.getBirth()%>">월
								               		<input type="text" name="birth" size="10" value="<%=use.getBirth()%>">일 --%>
								                	<!-- <input type="radio" name="양력음력" value="양력">양력
								                	<input type="radio" name="양력음력" value="음력">음력 -->
								                </td>
								            </tr>
								              <tr>
								                <td align="center"><b>휴대전화</b></td>
								                <td>
								               		 <input type="text" id="phone" size="10" value=<%=use.getPhone()%>>
								               		 	<!-- <option value="선택">선택</option>
									                	<option value="010">010</option>
									                	<option value="011">011</option>
									                	<option value="016">016</option>
									                	<option value="017">017</option>
									                	<option value="018">018</option>
									                	<option value="019">019</option>
								                	</select> -->
								                	<!-- <input type="button" name="zipcode" id="phone_certification" value="인증"><br> -->
								                </td>
								            </tr>
								                   
								               <tr>
			                                        <td align="center"><b>관심분야</b>
			                                        <td colspan = "7" >
				                                       <input type="checkbox" id="ch1" name="hobby" value="예술" checked>예술
				                                       <input type="checkbox" id="ch2" name="hobby" value="음악">음악
				                                       <input type="checkbox" id="ch3" name="hobby" value="스포츠">스포츠
                                       				 </td>
                                    		 </tr>
        					</table>
        					</form>
        								<input type="submit" id="delete" value="회원탈퇴" 
        								onClick="location.href='/MyPage/deletePro.jsp'"/>
        								<input type="submit" id="modify" value="수정하기"
        								onClick="location.href='/MyPage/modifyPro.jsp'"/>
        				</div>

        			</div>
        							
				</section>
			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<header>
							<h2>Questions or comments? <strong>Get in touch:</strong></h2>
						</header>
						<div class="row">
							<div class="col-6 col-12-medium">
								<section>
									<form method="post" action="#">
										<div class="row gtr-50">
											<div class="col-6 col-12-small">
												<input name="name" placeholder="Name" type="text" />
											</div>
											<div class="col-6 col-12-small">
												<input name="email" placeholder="Email" type="text" />
											</div>
											<div class="col-12">
												<textarea name="message" placeholder="Message"></textarea>
											</div>
											<div class="col-12">
												<a href="#" class="form-button-submit button icon solid fa-envelope">Send Message</a>
											</div>
										</div>
									</form>
								</section>
							</div>
							<div class="col-6 col-12-medium">
								<section>
									<p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat Phaselamet
									mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique. Curabitur
									leo nibh, rutrum eu malesuada.</p>
									<div class="row">
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon solid fa-home">
													1234 Somewhere Road<br />
													Nashville, TN 00000<br />
													USA
												</li>
												<li class="icon solid fa-phone">
													(000) 000-0000
												</li>
												<li class="icon solid fa-envelope">
													<a href="#">info@untitled.tld</a>
												</li>
											</ul>
										</div>
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon brands fa-twitter">
													<a href="#">@untitled</a>
												</li>
												<li class="icon brands fa-instagram">
													<a href="#">instagram.com/untitled</a>
												</li>
												<li class="icon brands fa-dribbble">
													<a href="#">dribbble.com/untitled</a>
												</li>
												<li class="icon brands fa-facebook-f">
													<a href="#">facebook.com/untitled</a>
												</li>
											</ul>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
	</body>
</body>
</html>