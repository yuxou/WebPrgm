<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice16_result</title>
</head>
<body>
	<h2>전달된 파라미터 이름들</h2>
	<%
		request.setCharacterEncoding("UTF-8");
	
		Enumeration<String> e = request.getParameterNames();

		while(e.hasMoreElements()) {
			String s = e.nextElement();
			out.println(s + "<br>");
		}
		out.println("<br><hr><br>");
		
		out.println("타입: " + request.getParameter("type") + "<br>");
		out.println("아이디: " + request.getParameter("strID") + "<br>");
		out.println("패스워드: " + request.getParameter("strPwd") + "<br>");
	%>
</body>
</html>