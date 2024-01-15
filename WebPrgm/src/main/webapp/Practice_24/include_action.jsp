<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice24_include</title>
</head>
<body>
<div align = "center">
	<h2>Include Action Practice</h2>
		<table>
			<tr>
				<td>
					<jsp:include page = "calendar.jsp">
						<jsp:param name = "YEAR" value = "2017" />
						<jsp:param name = "MONTH" value = "10" />
					</jsp:include>
				</td>
				<td width = "50px"></td>
				<td>
					<jsp:include page = "news.jsp">
						<jsp:param name = "TASK2" value = "Homework" />
					</jsp:include>
				</td>
			</tr>
		</table>
</div>
</body>
</html>