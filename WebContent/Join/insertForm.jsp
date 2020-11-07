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
		alert("���̵� �Է��ϼ���");
		document.userInfo.id.focus();
		return false;
	}else{
	url ="confirmId.jsp?id="+document.userInfo.id.value;
	open(url,"confirm","toolbar=no, width=350, height=150, top=150, left=150");
	}
}
	
function checkValue(){
	if(document.userInfo.passwd.value==""){
		alert("��й�ȣ��  �Է��ϼ���");
		document.userInfo.passwd.focus();
		return false;
	}
	else if(document.userInfo.passwd.value!=document.userInfo.passwdCheck.value){
		alert("��й�ȣ�� ��ġ�����ʽ��ϴ�. �ٽ��Է��ϼ���");
		document.userInfo.passwd.value=""
		document.userInfo.passwdCheck.value=""
		return false;
	}
	
	if(document.userInfo.name.value==""){
		alert("�̸��� �Է��ϼ���");
		document.userInfo.name.focus();
		return false;
	}
	if(document.userInfo.email.value==""){
		alert("�̸����� �Է��ϼ���");
		document.userInfo.email.focus();
		return false;
	}
	if(document.userInfo.address.value==""){
		alert("�ּҸ� �Է��ϼ���");
		document.userInfo.address.focus();
		return false;
	}
	if(document.userInfo.birth.value==""){
		alert("��������� �Է��ϼ���");
		document.userInfo.birth.focus();
		return false;
	}
	if(document.userInfo.phone.value==""){
		alert("��ȭ��ȣ�� �Է��ϼ���");
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
                                 <li><a href="/HobbyTest/mbti.jsp">��� �˻�</a></li>
                                 <li><a href="/HobbyTest/mbti.jsp">MBTI �˻�</a></li>
                              </ul>
                           </li>
                          
                           <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">
                           <span>Service Center</span></a>
                              <ul>
                                 <li><a href="/ServiceCenter/Noticeboard/notice.jsp">��������</a></li>
                                 <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
                                 <li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
                              </ul>
                           </li>
                           <li><a href="/community/infoboard/info_board.jsp">
                              <span>community</span></a>
                              <ul>
                                 <li><a href="/community/freeboard/free_board.jsp">�����Խ���</a></li>
                                 <li><a href="/community/infoboard/info_board.jsp">�����Խ���</a></li>
                              </ul>
                           </li>
                        </ul>
                        <ul class="navtop"> 
                        			<%if("admin".equals(session.getAttribute("id"))){ %> <!-- �����ڸ� -->
	                                	<li><a href="/admin/memberList.jsp">�����ڸ޴�</a></li>
	                                	<li><a href="/Join/Logout.jsp">Logout</a></li>
	                                	
                                	<%}else if(session.getAttribute("id")!=null){ %>      <!-- ���̵� ������ -->
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
			<td>���̵�</td>
		</tr>
		<tr>
			<td><input type="text" name="id"  placeholder="ID�� �Է����ּ���.">4~12���� ���� ��ҹ��ڿ� ���ڷθ� �Է�</td>
			<td><input type="button" value="�ߺ�Ȯ��" onclick="confirmId()"></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
		</tr>
		<tr>
			<td><input type="password" name="passwd" placeholder="��й�ȣ�� �Է����ּ���."></td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ��</td>
		</tr>
		<tr>
			<td><input type="password" name="passwdCheck" placeholder="��й�ȣ�� �Է����ּ���."></td>
		</tr>
		<tr>
			<td>�̸�</td>
		</tr>		
		<tr>
			<td><input type="text" name="name" placeholder="�̸��� �Է����ּ���."></td>
		</tr>	
		<tr>
			<td>�̸���</td>
		</tr>		
		<tr>
			<td><input type="text" name="email" placeholder="�̸����� �Է����ּ���."></td>
		</tr>	
		<tr>
			<td>�ּ�</td>
		</tr>
		<tr>
			<td><input type="text" name="address" placeholder="�ּҸ� �Է����ּ���."></td>
		</tr>	
		<tr>
			<td>�������</td>
		</tr>
		<tr>
			<td><input type="text" name="birth" placeholder="������� 8�ڸ��� �Է����ּ���."></td>
		</tr>
		<tr>
			<td>�޴���ȭ</td>
		</tr>
		<tr>
			<td><input type="text" name="phone" placeholder="��ȣ 11�ڸ��� �Է����ּ���"></td>
		</tr>	
			
		<tr>
			<td>���ɺо�</td>
		</tr>	
		<tr>
			<td>
			
				<input type="checkbox" id="ch1" name="hobby" value="����" checked>����
				<label for="ch1"></label>
				<input type="checkbox" id="ch2" name="hobby" value="����">����
				<label for="ch2"></label>
				<input type="checkbox" id="ch3" name="hobby" value="������">������
				<label for="ch3"></label>
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="�����ϱ�" id="submit" ></td>
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