<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<%!
public String parseDay(int cnt, String day) {
    if (cnt % 7 == 0)
       return "<font color = \"red\">" + day + "</font>";
    else if (cnt % 7 == 6)
       return "<font color = \"blue\">" + day + "</font>";
    else
       return day;
}
%>
<meta charset="UTF-8">
<title>Practice18</title>
<style>
	table {
		width: 60%;
		height: 250px;
		text-align: center;
		border-collapse: collapse;
		border: 2px solid black;
	}
	h3 {
		margin-left: 550px;
	}
</style>
</head>
<body>
	<%
	Calendar today = Calendar.getInstance();
	
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int date = today.get(Calendar.DATE);
	
	out.println("<div align = \"center\">");
	out.println("<h3>" + year + "-" + (month + 1) + "-" + date + "</h3>");
	
	Calendar cal = Calendar.getInstance();
	cal.set(year, month, 1);
	
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH);
	
	int day = cal.get(Calendar.DAY_OF_WEEK); 
	int start = cal.getActualMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
	out.println("<table border = \"1\">");	
	String[] Week = {"일", "월", "화", "수", "목", "금", "토"};
	
	out.println("<tr>");
	for (int i = 0; i < Week.length; i++) {
		out.print("<td>");
		out.print(parseDay(i, Week[i]));
		out.print("</td>");
	}
	out.println("</tr>");
	
	int cnt = 0;

	out.println("<tr>");
	for (int i = 0; i < day - 1; i++) {
		out.println("<td>&nbsp;</td>");
		cnt++;
	}

	for (int i = start; i <= end; i++) {		
		if (cnt == 7) {
			out.println("</tr>");
			cnt = 0;
		}
		
		out.print("<td>" + parseDay(cnt, Integer.toString(i)) + "</td>");
		cnt++;
	}

	if (cnt % 7 != 0) {
		for (int i = 0; i < 7 - (cnt % 7); i++)
			out.println("<td>&nbsp;</td>");
	}
	
	out.println("</table>");
	out.println("</div>");
	%>
</body>
</html>