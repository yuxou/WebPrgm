<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
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
<form action = "calc_result.jsp" method = "post">
	<table>
        <tr>
            <th colspan="2">CalCuLaTor</th>
        </tr>
        <tr>
            <td>
                <input type="image" class="image" src="./image/cal.jpg" style="width: 350px; height: auto;">
            </td>
            <td style="width: 350px;">
                <input type = "text" name = "num1" value = "0" required style = "text-align: center;">
                <br><br>
                <select name = "operator">
                	<option value = "+">+</option>
                	<option value = "-">-</option>
                	<option value = "*">*</option>
                	<option value = "/">/</option>
                </select>
                <br><br>
                <input type = "text" name = "num2" value = "0" required style = "text-align: center;">
                <br><br>
                <input type = "submit" value = "=">
                <br><br>
                <input type = "text" name = "result" disabled>
            </td>
        </tr>
        <tr>
            <th colspan="2"><br></th>
        </tr>
    </table>
</form>
</body>
</html>