<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice14</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
		cal.set(2008, Calendar.FEBRUARY, 1);
	
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH);
		int date = cal.get(Calendar.DATE);
		int day = cal.get(Calendar.DAY_OF_WEEK);
		
		int start = cal.getActualMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int startDay = cal.get(Calendar.DAY_OF_WEEK);
		
		String[] week = {"일", "월", "화", "수", "목", "금", "토"};

		out.println("오늘은 " + year + "년 " + (month + 1) + "월 " + date + "일 " + week[day - 1] + "요일입니다.<br>");
		out.println("<br>이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br>");
		
		cal.set(2003, Calendar.JANUARY, 18);
		
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH);
		date = cal.get(Calendar.DATE);
		day = cal.get(Calendar.DAY_OF_WEEK);
		
		out.println("<br>내 생일 " + year + "년 " + (month + 1) + "월 " + date + "일은 " + week[day - 1] + "요일입니다.");
	%>
</body>
</html>