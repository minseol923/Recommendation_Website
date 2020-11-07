<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../assets/css/main.css" type="text/css"/>
<link rel="stylesheet" href="../assets/css/insertStyle.css" type="text/css"/>
<script type="text/javascript">

function confirmId(){
	if(document.userInfo.id.value==""){
		alert("아이디를 입력하세요");
		document.userInfo.id.focus();
		return false;
	}else{
	url ="confirmId.jsp?id="+document.userInfo.id.value;
	open(url,"confirm","toolbar=no, width=350, height=150, top=150, left=150");
	}
}
	
function checkValue(){
	if(document.userInfo.passwd.value==""){
		alert("비밀번호를  입력하세요");
		document.userInfo.passwd.focus();
		return false;
	}
	else if(document.userInfo.passwd.value!=document.userInfo.passwdCheck.value){
		alert("비밀번호가 일치하지않습니다. 다시입력하세요");
		document.userInfo.passwd.value=""
		document.userInfo.passwdCheck.value=""
		return false;
	}
	
	if(document.userInfo.name.value==""){
		alert("이름을 입력하세요");
		document.userInfo.name.focus();
		return false;
	}
	if(document.userInfo.email.value==""){
		alert("이메일을 입력하세요");
		document.userInfo.email.focus();
		return false;
	}
	if(document.userInfo.address.value==""){
		alert("주소를 입력하세요");
		document.userInfo.address.focus();
		return false;
	}
	if(document.userInfo.birth.value==""){
		alert("생년월일을 입력하세요");
		document.userInfo.birth.focus();
		return false;
	}
	if(document.userInfo.phone.value==""){
		alert("전화번호를 입력하세요");
		document.userInfo.phone.focus();
		return false;
	}

}

</script>

</head>
<body>
	<!-- Header -->					
		<section id="header">
               <div class="container">

                  <!-- Logo-->
                  <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>
                  
                  <!-- Nav -->
                     <nav id="nav">
                        <ul class="mainnav">
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
                        <ul class="navtop"> 
                        			<%if("admin".equals(session.getAttribute("id"))){ %> <!-- 관리자면 -->
	                                	<li><a href="/admin/memberList.jsp">관리자메뉴</a></li>
	                                	<li><a href="/Join/Logout.jsp">Logout</a></li>
	                                	
                                	<%}else if(session.getAttribute("id")!=null){ %>      <!-- 아이디가 있으면 -->
	                                	<li><a href="/Join/Logout.jsp">Logout</a></li>
	                                	<li><a class="fas fa-user fa-1.5x" href="/MyPage/Profile.jsp"></a></li>
                                	<%}else{%>       
                                	<li><a href="/Join/LoginForm.jsp">Login</a></li>
				                    <li><a href="/Join/insertForm.jsp">Join</a></li>
				                    <%} %>
                                            
                        </ul>
                     </nav>

               </div>
            </section>
<div align="center">

	<div id="i_content">
    <section class="i_container">
    <section class="i_wrapper">
    
    <div class="i_header">
        <div class="i_logo">
            <span>JOIN</span>
        </div>
           <!-- <h1>Welcome back!</h1> --> 
      
    </div>
	<section class="l_main-content">
	<form method="post" action="../Join/insertPro.jsp" name="userInfo" onsubmit="return checkValue()">
	
	<table>
		<tr>
			<td>아이디</td>
		</tr>
		<tr>
			<td><input type="text" name="id"  placeholder="ID를 입력해주세요.">4~12자의 영문 대소문자와 숫자로만 입력</td>
			<td><input type="button" value="중복확인" onclick="confirmId()"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
		</tr>
		<tr>
			<td><input type="password" name="passwd" placeholder="비밀번호를 입력해주세요."></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
		</tr>
		<tr>
			<td><input type="password" name="passwdCheck" placeholder="비밀번호를 입력해주세요."></td>
		</tr>
		<tr>
			<td>이름</td>
		</tr>		
		<tr>
			<td><input type="text" name="name" placeholder="이름을 입력해주세요."></td>
		</tr>	
		<tr>
			<td>이메일</td>
		</tr>		
		<tr>
			<td><input type="text" name="email" placeholder="이메일을 입력해주세요."></td>
		</tr>	
		<tr>
			<td>주소</td>
		</tr>
		<tr>
			<td><input type="text" name="address" placeholder="주소를 입력해주세요."></td>
		</tr>	
		<tr>
			<td>생년월일</td>
		</tr>
		<tr>
			<td><input type="text" name="birth" placeholder="생년월일 8자리를 입력해주세요."></td>
		</tr>
		<tr>
			<td>휴대전화</td>
		</tr>
		<tr>
			<td><input type="text" name="phone" placeholder="번호 11자리를 입력해주세요"></td>
		</tr>	
			
		<tr>
			<td>관심분야</td>
		</tr>	
		<tr>
			<td>
			
				<input type="checkbox" id="ch1" name="hobby" value="예술" checked>예술
				<label for="ch1"></label>
				<input type="checkbox" id="ch2" name="hobby" value="음악">음악
				<label for="ch2"></label>
				<input type="checkbox" id="ch3" name="hobby" value="스포츠">스포츠
				<label for="ch3"></label>
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="가입하기" id="submit" ></td>
		</tr>	
	</table>
	</form>
	</section>
	</section>
	</section>
	</div>
	</div>
	</body>
	</html>