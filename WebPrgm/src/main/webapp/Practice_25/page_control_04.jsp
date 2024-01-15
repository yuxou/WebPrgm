<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice25_page_control_04</title>
</head>
<body>
<%
	out.println(request.getParameter("src") + "에서 전달된 내용입니다. <br>");
	out.println("page_control_04.jsp에서 출력합니다.<br>");
	
	out.println("<hr>");
	out.println("넘겨받은 파라미터들 <br>");
	Enumeration <String> n = request.getParameterNames();
	while (n.hasMoreElements()) {
		String s = n.nextElement();
		out.println(s + " : " + request.getParameter(s) + "<br>");
	}
	
	out.println("<hr>");
	out.println("안녕하세요, " + request.getParameter("username") + "님. 반갑습니다.");
	out.println("<hr>");
%>
</body>
</html>