<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice15</title>
</head>
<body>
<%
	int year = 1919;
	int month = 3;
	
	Calendar cal = Calendar.getInstance();
	cal.set(year, month - 1, 1);
	
	int day = cal.get(Calendar.DAY_OF_WEEK); 
	int start = cal.getActualMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.println("<h1>" + year + "년 " + month + "월</h1>");
	out.println("<hr>");
	
	int count = 0; 

	for (int i = 0; i < day - 1; i++) {
		out.print("&nbsp;&nbsp;&nbsp;&nbsp; ");
		count++;
	}
	
	for (int i = start; i <= end; i++) {
		if (count == 7) {
			out.println("<br>");
			count = 0;
		}		
		out.print(i + "&nbsp;&nbsp;&nbsp;");
		count++;
	}	
%>
</body>
</html>