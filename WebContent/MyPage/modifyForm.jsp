<%@page import="Test.user"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="userjoin" class="Test.userDB"/>
 <%
	String id =(String)session.getAttribute("id");
	user use = userjoin.getData(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ����������</title>
</head>
<body>
			<form naeme="regForm" method="post" action="/MyPage/modifyPro.jsp">
									<header>
										<h2>ȸ�� ���� ����</h2>
									</header>
									<table>
								            <tr>
								                <td align="center" width ="150"><b>���̵�</b></td>
								                <td>
								                	<input type="text" name="my_name" readonly size="20" value=<%=use.getId()%> >
								                </td>
								            </tr>
								            <tr>
								                <td align="center" width ="150"><b>��й�ȣ</b></td>
								                <td>
								                	<input type="password" name="passwd" maxlength="16"  value=<%=use.getPasswd()%> >
								               		(���� ��ҹ���/����/Ư������ �� 2���� �̻� ����,8~18��)
								               	</td>
								            </tr>
								            
								            <tr>
								                <td align="center"><b>��й�ȣȮ��</b></td>
								                <td>
								                	<input type="password" name="passwd_check" maxlength="16"  value=<%=use.getPasswd()%>>
								                </td>
								            </tr>
								            
								             <tr>
								                <td align="center"><b>�̸�</b></td>
								                <td>
								                	<input type="text" name="name" size="20"  value=<%=use.getName()%>>
								                </td>
								            </tr>
								            
								            <tr>
								                <td align="center"><b>�̸���</b></td>
								                <td>
								                	<input type="text" name="email" value=<%=use.getEmail()%>> <!-- @ -->
								                	<%-- <input type='text' name="email_dns" value="<%=use.getEmail()%>"> 
											              <select id ="emailaddr" name="emailaddr">
											                 <option value="">�����Է�</option>
											                 <option value="daum.net">daum.net</option>
											                 <option value="gmail.com">gmail.com</option>
											                 <option value="hanmail.net">hanmail.net</option>
											                 <option value="naver.com">naver.com</option>
											                 <option value="nate.com">nate.com</option>
											              </select> --%>
											    </td>
								            </tr>
								            
								            <tr>
								            	<td align="center"><b>�ּ�</b></td>
								            	<td>
								            		<!-- <input type="text" name="address" id="address" size="6">
								            		<input type="button" name="zipcode" id="zipcode" value="�����ȣ"><br> -->
								                    <input type="text" name="add1" id="add1" size="25" value="<%=use.getAddress()%>" >�⺻�ּ�<br>
								                    <!-- <input type="text" id="add2" id="add2" size="25"> ������ �ּ� -->
												</td>
											</tr>
											
											 <tr>
								                <td align="center"><b>�Ϲ���ȭ</b></td>
								                <td>
								               		 <select name="homephone1" id="homephone" style="width:70px;">
								               			  <option value="����">����</option>
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
								            
								          
								         
								            <tr>
								                <td align="center"><b>�������</b></td>
								                <td>
								                	<input type="text" name="birth" size="10" value=<%=use.getBirth()%>>
								                	<%-- <input type="text" name="birth" size="10" value="<%=use.getBirth()%>">��
								               		<input type="text" name="birth" size="10" value="<%=use.getBirth()%>">�� --%>
								                	<!-- <input type="radio" name="�������" value="���">���
								                	<input type="radio" name="�������" value="����">���� -->
								                </td>
								            </tr>
								              <tr>
								                <td align="center"><b>�޴���ȭ</b></td>
								                <td>
								               		 <input type="text" id="phone" value=<%=use.getPhone()%> style="width:70px;">
								               		 	<!-- <option value="����">����</option>
									                	<option value="010">010</option>
									                	<option value="011">011</option>
									                	<option value="016">016</option>
									                	<option value="017">017</option>
									                	<option value="018">018</option>
									                	<option value="019">019</option>
								                	</select> -->
								                	<!-- <input type="button" name="zipcode" id="phone_certification" value="����"><br> -->
								                </td>
								            </tr>
								                   
								             <tr>
		                                        <td align="center"><b>���ɺо�</b>
		                                        <td colspan = "7" >
		                                        <input type="checkbox" id="ch1" name="hobby" value="����" >����
		                                       <input type="checkbox" id="ch2" name="hobby" value="����">����
		                                       <input type="checkbox" id="ch3" name="hobby" value="������">������
                                        </td>
                                    </tr>
        					</table>
        					</form>
        								<input type="submit" id="btnModify" value="�����Ϸ�" onClick="location.href='/MyPage/modifyPro.jsp'" 
        								>
        								<input type="button" id="btnModifyCancel" value="�������" />
        								<input type="button" id="delete" value="ȸ��Ż��"
        										onClick="location.href='../MyPage/deletePro.jsp'" />
        								

</body>
</html>