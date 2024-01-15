<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice24_calendar</title>
</head>
<body>
	<% 
	Calendar today = Calendar.getInstance();
	
	String year = request.getParameter("YEAR");
	String month = request.getParameter("MONTH");
	
	int y, m;
		
 	if (year != null && month != null) { 
 		y = Integer.parseInt(year);
 		m = Integer.parseInt(month);
 	} else {
 		y = today.get(Calendar.YEAR);
 		m = today.get(Calendar.MONTH);
 	}	
 	today.set(y, m - 1, 1);
 	
 	out.println("<h3>" + y + "년 " + m + "월</h3>");
 	out.println("<hr>");

 	int day = today.get(Calendar.DAY_OF_WEEK); 
 	int start = today.getActualMinimum(Calendar.DATE);
 	int end = today.getActualMaximum(Calendar.DAY_OF_MONTH);
 	
 	for (int i = 0; i < day - 1; i++)
 		out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
 	
 	for (int i = start; i <= end; i++) {
 		out.println(i + "&nbsp;&nbsp&nbsp;");
 		
 		if ((i + day - 1) % 7 == 0)
 			out.println("<br>");
 	}
	%>
</body>
</html>