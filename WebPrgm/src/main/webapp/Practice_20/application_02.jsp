<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_02</title>
</head>
<body>
	<%
	 	String id = request.getParameter("id");
		String message = id + "님 환영합니다.";

		java.util.Date time = new java.util.Date();
		
		//필요한 application 속성값을 가져옴 ("count")
		Integer count = (Integer)application.getAttribute("count");
	
		//제일 처음 접속했음을 의미
		if (count == null) {
			count = 0;
		}		
		count++;		
		application.setAttribute("count", count);
	%>
	
	<p><%= message %></p>
	<p>현재 시간: <%= time %></p>
	<p>오늘의 접속자 수: <%= count %></p>
</body>
</html>