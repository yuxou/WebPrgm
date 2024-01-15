<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice11</title>
<style>
	h1{
		text-align: center;
		font-size: 45px;
	}
	table {
		text-align: center;
		width: 30%;
		margin-left: auto;
		margin-right: auto;
	}
	tr {
		height: 220px;
	}
</style>
</head>
<body>
	<%
		out.println("<h1>구구단 출력</h1>");
		out.println("<hr>");
		
		out.println("<table border = \"1\">");
		out.println("<tr>");
		for (int i = 2; i <= 5; i++) {
			out.println("<td>");
			for (int j = 1; j <= 9; j++) 
				out.println(i + " * " + j + " = " + i*j + "<br>");
			out.println("</td>");
		}
		out.println("</tr>");
		
		out.println("<tr>");
		for (int i = 6; i <= 9; i++) {
			out.println("<td>");
			for (int j = 1; j <= 9; j++)
				out.println(i + " * " + j + " = " + i*j + "<br>");
			out.println("</td>");
		}
		out.println("</tr>");
		out.println("</table>");
	%>
</body>	
</html>