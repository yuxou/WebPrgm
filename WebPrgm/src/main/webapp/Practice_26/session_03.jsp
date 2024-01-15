<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object 03</title>
</head>
<body>
	<%
	long mseconds = session.getCreationTime();
	%>
	세션이 생성된 후 <%= mseconds %>가 지났습니다. 
</body>
</html>