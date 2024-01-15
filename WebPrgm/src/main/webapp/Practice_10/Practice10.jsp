<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice10</title>
<style>
	table {
		width: 80%;
		height: 250px;
		text-align: center;
	}
</style>
</head>
<body>
	<% 
	out.println("<div align = \"center\">");
	out.println("<table border = \"1\">");
	
	String[] Week = {"일", "월", "화", "수", "목", "금", "토"};
	
	out.println("<tr>");
	for (int i = 0; i < Week.length; i++) {
		out.println("<td>");
		
		if (i == 0) 
			out.println("<font color = \"red\">" + Week[i] + "</font>");
		else if (i == Week.length - 1)
			out.println("<font color = \"blue\">" + Week[i] + "</font>");
		else
			out.println(Week[i]);
		
		out.println("</td>");
	}
	out.println("</tr>");
	
	for (int i = 0; i < 4; i++) {
		out.println("<tr>");
		for (int j = 0; j < 7; j++) {
			out.println("<th>&nbsp</th>");
		}
		out.println("</tr>");
	}
	
	out.println("</table>");
	out.println("</div>");
	%>
</body>
</html>