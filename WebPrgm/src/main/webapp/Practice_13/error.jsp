<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice13_error</title>
</head>
<body>
<%@ page isErrorPage = "true" %>
<%
	int x = 10/0;
%>
</body>
</html>