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
<title>회원정보수정</title>
</head>
<body>
			<form naeme="regForm" method="post" action="/MyPage/modifyPro.jsp">
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
											
											 <tr>
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
								               		 <input type="text" id="phone" value=<%=use.getPhone()%> style="width:70px;">
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
		                                        <input type="checkbox" id="ch1" name="hobby" value="예술" >예술
		                                       <input type="checkbox" id="ch2" name="hobby" value="음악">음악
		                                       <input type="checkbox" id="ch3" name="hobby" value="스포츠">스포츠
                                        </td>
                                    </tr>
        					</table>
        					</form>
        								<input type="submit" id="btnModify" value="수정완료" onClick="location.href='/MyPage/modifyPro.jsp'" 
        								>
        								<input type="button" id="btnModifyCancel" value="수정취소" />
        								<input type="button" id="delete" value="회원탈퇴"
        										onClick="location.href='../MyPage/deletePro.jsp'" />
        								

</body>
</html>