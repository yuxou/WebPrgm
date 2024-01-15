<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice24_news</title>
</head>
<body>
	<%
	String task1 = request.getParameter("TASK1");
	String task2 = request.getParameter("TASK2");
	
	if (task1 == null)
		task1 = "일정 없음";
	if (task2 == null)
		task2 = "일정 없음";
	
	out.println("<h3>오늘의 일정</h3>");
	out.println("<hr>");
	out.println("1. " + task1 + "<br>");
	out.println("2. " + task2);
	%>
</body>
</html>