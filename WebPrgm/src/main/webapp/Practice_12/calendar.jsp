<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice12_calendar</title>
<style>
   table.cal {
      width: 300px;
      height: 200px;
      border-collapse: collapse;
      text-align: center;
   }
   .cal {
      border: solid 1.5px black;
   }
</style>
</head>
<body>
   <% 
   out.println("<div align>");
   out.println("<table border = \"1\" class = \"cal\">");
   
   String[] Week = {"일", "월", "화", "수", "목", "금", "토"};
   
   out.println("<tr class = \"cal\">");
   for (int i = 0; i < Week.length; i++) {
      out.println("<td class = \"cal\">");
      
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
      out.println("<tr class = \"cal\">");
      for (int j = 0; j < 7; j++) {
         out.println("<th class = \"cal\">&nbsp</th>");
      }
      out.println("</tr>");
   }
   
   out.println("</table>");
   out.println("</div>");
   %>
</body>
</html>