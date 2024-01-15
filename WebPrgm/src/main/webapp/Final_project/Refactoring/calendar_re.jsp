<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Final_calendar-re</title>
<style>
table.top {
	width: 80%;
	padding: 0px 0px 15px;
}

table.top td {
	font-size: 20px;
}

table.cal {
	width: 80%;
	border-collapse: collapse;
	border: solid 2px rgb(221, 209, 187);
	text-align: center;
	font-size: 20px;
}

table.cal td {
	width: 80px;
	height: 45px;
	border: solid 2px rgb(221, 209, 187);
}
</style>
</head>
<body>
<%! 
   public String parseDay(int cnt, String day) {
      if (cnt % 7 == 0)
         return "<font color = \"red\">" + day + "</font>";
      else 
         return day;
   }
%>
<%--연도, 월 선택, 오늘 날짜--%>
<%
   Calendar today = Calendar.getInstance();

   int tYear = today.get(Calendar.YEAR);
   int tMonth = today.get(Calendar.MONTH);
   int tDate = today.get(Calendar.DATE);
   
   Calendar cal = Calendar.getInstance();
   
   int year = cal.get(Calendar.YEAR);
   int month = cal.get(Calendar.MONTH) + 1;
   
   if (request.getParameter("YEAR") != null && request.getParameter("MONTH") != null) {
      String sYear = request.getParameter("YEAR");
      year = Integer.parseInt(sYear);
      String sMonth = request.getParameter("MONTH");
      month = Integer.parseInt(sMonth);
   }
%>
<div align="center">
    <form method="GET" action="calendar_re.jsp">
        <table class="top">
            <tr>
                <!-- 연도 선택 -->
                <td style="text-align: left;">
                    <a href="calendar_re.jsp?YEAR=<%= (year - 1) %>&MONTH=<%= month %>"> ◀ </a>
                    <%= year %>년
                    <a href="calendar_re.jsp?YEAR=<%= (year + 1) %>&MONTH=<%= month %>"> ▶ </a>
                </td>
                <!-- 월 선택 -->
                <td style="text-align: center;">
                    <a href="calendar_re.jsp?YEAR=<%= year %>&MONTH=<%= (month == 1 ? 1 : month - 1) %>"> ◀ </a>
                    <%= month %>월
                    <a href="calendar_re.jsp?YEAR=<%= year %>&MONTH=<%= (month == 12 ? 12 : month + 1) %>"> ▶ </a>
                </td>

                <!-- 오늘 날짜 -->
                <td style="text-align: right;">
                    <%= tYear %>-<%= (tMonth + 1) %>-<%= tDate %>
                </td>
            </tr>
        </table>
    </form>
<%
	cal.set(year, month - 1, 1);
   
   	int start = cal.getMinimum(Calendar.DATE);
   	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
   	int startDay = cal.get(Calendar.DAY_OF_WEEK);
   	int cnt = 0;
   
   	out.println("<table class = cal>");
   
   	//요일
   	out.println("<tr>");
   	String[] week = { "일", "월", "화", "수", "목", "금", "토" };
   	for (int i = 0; i < week.length; i++) {
    	out.print("<td style=\"height: 10px;\">");
      	out.print(parseDay(i, week[i]));
      	out.println("</td>");
   	}
   	out.println("</tr>");
   
   	//빈칸
   	out.println("<tr>");
   	for (int i = 0; i < startDay - 1; i++) {
      	out.println("<td>&nbsp;</td>");
      	cnt++;
   	}
   
   	//일
   	for (int i = start; i <= end; i++) {
      	out.print("<td>");
      	out.print(parseDay(cnt, Integer.toString(i)));
      	out.println("</td>");
      
      	//각 주가 7일이니까, 일요일마다 새로운 행으로 넘어감
      	if (cnt % 7 == 6) {
         	out.println("</tr>");
      	}
      	cnt++;
   	}
   
   	//cnt가 7의 배수가 될 때까지 나머지 공백 출력
   	while (cnt % 7 != 0) {
      	out.println("<td>&nbsp;</td>");
      	cnt++;
   	}
   
   	out.println("</table>");
   	out.print("<a href=\"calendar.jsp?YEAR=" + tYear);
   	out.println("</div>");
%>
</div>
</body>
</html>
