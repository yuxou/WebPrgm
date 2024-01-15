<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice12</title>
<style>
table.inc {
	border: none;
	border-collapse: collapse;
	border-color: white;
	height: 200px;
	width: 50%;
	margin: 0 auto;
}
td {
	text-align: center;
}
</style>
</head>
<body>
   <div align = "CENTER">
   <h2>include 지시어 연습</h2>
   <hr>
   <p>
   <table class = "inc">
   <tr>
      <td width = "30%"><%@ include file = "calendar.jsp" %></td>
      <td width = "40%"><%@ include file = "news.jsp" %></td>
   </tr>
   </table>
</div>
</body>
</html>