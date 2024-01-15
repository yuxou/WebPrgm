<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice22</title>
</head>
<body>
	<div align = "center">
		<h3>greeting.jsp에서 출력한 메세지입니다.</h3>
		<% 
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		
		out.println(name + "님 환영합니다.<br>");
		out.println("오늘은 " + date  + "입니다.");
		%>
	</div>
</body>
</html>