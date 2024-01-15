<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator Result</title>
<style>
        table {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            width: 700px;
            height: 250px;
        }
        th {
            border-collapse: collapse;
            background-color: rgb(87, 208, 245);
            padding: 10px;
            font: italic bold 3em/1em Georgia, serif;
        }
        td {
            border: 1px solid rgba(128, 128, 128, 0.382);
        }
    </style>
</head>
<body>
<jsp:useBean id = "calc" class = "jspbook.pr31.Calculator" scope = "page" />
<jsp:setProperty name = "calc" property = "*" />
<table>
        <tr>
            <th colspan="2">CalCuLaTor</th>
        </tr>
        <tr>
            <td>
                <input type="image" class="image" src="./image/cal.jpg" style="width: 350px; height: auto;">
            </td>
            <td style="width: 350px;">
            	<input type = "text" value = "${calc.op1}" readonly style = "text-align: center;">
                <br><br>
				${param.operator}
                <br><br>
                <input type = "text" value = "${calc.op2}" readonly style = "text-align: center;">
                <br><br>
                ${"="}
                <br><br>
                <input type = "text" value = "${calc.calc()}" readonly style = "text-align: center;">
            </td>
        </tr>
        <tr>
            <th colspan="2"><br></th>
        </tr>
</table>
</body>
</html>