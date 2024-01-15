<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice30_register</title>
</head>
<body>
<jsp:useBean id = "login" class = "jspbook.pr30.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*"/>
<div align = "center">
	<h2>등록내용</h2>
	 이름 : <jsp:getProperty property="id" name="login" /><p>
      패스워드 : <jsp:getProperty property="pw" name="login" /><p>
      이메일 : <jsp:getProperty property="email" name="login" /><p>
      성별 : <jsp:getProperty property="gender" name="login" /><p>
      생일 : <jsp:getProperty property="birth" name="login" /><p>
	<hr>
	<%
	out.print(login.getId() + "씨는 ");

	if (login.getGender() == 0) 
		out.print("남성이고, ");
	else 
		out.print("여성이고, ");
	
	if (login.isGrownUp() == true)
		out.println("성인입니다.");
	else
		out.println("성인이 아닙니다.");
	%>
</div>	
</body>
</html>