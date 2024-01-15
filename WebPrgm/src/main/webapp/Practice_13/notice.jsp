<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice13_notice</title>
</head>
<style>
th {
	background-color: rgba(225, 166, 0, 0.384);
	border: none;
	width: 600px;
}
td {
	background-color: rgba(247, 208, 93, 0.419);
	border: none;
	height: 350px;
}
table {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}
</style>
<body>
	<input type = "image" src = "image/eclass_title.jpg" style = "display: block; margin: 0 auto;">
	<table>
		<tr>
			<th><h3>오류가 발생했습니다</h3></th>
		</tr>
		<tr>
			<td>
				<input type = "image" src = "image\flower.gif">
				<h4>
				오류 발생시간: <%= new java.util.Date() %><br><br>
				최대한 빨리 조치하겠습니다.
				</h4>
			</td>
		</tr>
	</table>
</body>
</html>