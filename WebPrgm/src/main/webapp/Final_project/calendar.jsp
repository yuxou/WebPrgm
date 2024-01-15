<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Final_calendar</title>
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
   //일요일은 빨간 색으로 표시하기 위해 7의 배수일 때 빨간색
   public String parseDay(int cnt, String day) {
      if (cnt % 7 == 0)
         return "<font color = \"red\">" + day + "</font>";
      else 
         return day;
   }
%>
<%--연도, 월 선택, 오늘 날짜--%>
<%
   //calendar 객체를 사용해 현재 연도, 월, 날짜를 불러옴
   Calendar today = Calendar.getInstance();

   int tYear = today.get(Calendar.YEAR);
   int tMonth = today.get(Calendar.MONTH);
   int tDate = today.get(Calendar.DATE);
   
   //연도, 월 선택
   Calendar cal = Calendar.getInstance();
   
   int year = cal.get(Calendar.YEAR);
   int month = cal.get(Calendar.MONTH) + 1; //값이 0부터 11이라 +1을 해야 실제 월이 나옴
   
   //파라미터로 선택된 연도와 월을 불러옴
   if (request.getParameter("YEAR") != null && request.getParameter("MONTH") != null) {
      String sYear = request.getParameter("YEAR");
      year = Integer.parseInt(sYear); //정수로 변환해야 함
      String sMonth = request.getParameter("MONTH");
      month = Integer.parseInt(sMonth); //정수로 변환해야 함
   }
   
   //폼 태그를 사용해 연도와 월을 바꿀 수 있게 설정함
   out.println("<div align = center>");  
   out.println("<form method = \"GET\" action = \"calendar.jsp\">");
   out.println("<table class = \"top\">");  
   out.println("<tr>");
   //연도 선택
   out.println("<td style = \"text-align: left;\">");
   
   out.print("<a href=\"calendar.jsp?YEAR=" + (year - 1));
   out.print("&MONTH=" + month + "\">" + " ◀ </a>");
   out.println(year + "년"); 
   out.print("<a href=\"calendar.jsp?YEAR=" + (year + 1));
   out.print("&MONTH=" + month + "\">" + " ▶ </a>");
   
   out.println("</td>");
   
   //월 선택
   out.println("<td style = \"text-align: center;\">");
   
   //1월일 때 전달로 넘어가지 못 하게 설정, 나머지는 앞으로 이동 가능
   if (month == 1) {
      out.print("<a href=\"calendar.jsp?YEAR=" + year);
      out.println("&MONTH=" + month + "\">" + " ◀ </a>");
   } else{
      out.print("<a href=\"calendar.jsp?YEAR=" + year);
      out.println("&MONTH=" + (month - 1) + "\">" + " ◀ </a>");
   }
    
   out.println(month + "월");
   
   //12월일 때 뒷달로 넘어가지 못 하게 설정, 나머지는 뒤로 이동 가능
   if (month == 12) {
      out.print("<a href=\"calendar.jsp?YEAR=" + year);
      out.println("&MONTH=" + month + "\">" + " ▶ </a>");
   } else {
      out.print("<a href=\"calendar.jsp?YEAR=" + year);
      out.println("&MONTH=" + (month + 1) + "\">" + " ▶ </a>");
   }
   
   out.println("</td>");
   
   //오늘 날짜
   out.print("<td style = \"text-align: right;\">");
   out.print(tYear + "-" + (tMonth + 1) + "-" + tDate);
   out.println("</td>");

   out.println("</tr>");
   out.println("</table>");
   out.println("</form>");

   //달력
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
</body>
</html>
