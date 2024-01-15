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
	<%
		String n1 = request.getParameter("num1");
		String n2 = request.getParameter("num2");
		String operator = request.getParameter("operator");
		
		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);
		
		int result = 0;
		
		if (operator.equals("+"))
			result = num1 + num2;
		else if (operator.equals("-"))
			result = num1 - num2;
		else if (operator.equals("*"))
			result = num1 * num2;
		else if (operator.equals("/")) {
			if (num2 != 0)
				result = num1 / num2;
			else
				out.println("error");
		}
		
		request.setAttribute("result", result);
	%>
<table>
        <tr>
            <th colspan="2">CalCuLaTor</th>
        </tr>
        <tr>
            <td>
                <input type="image" class="image" src="./image/cal.jpg" style="width: 350px; height: auto;">
            </td>
            <td style="width: 350px;">
                <input type = "text" name = "num1" value = "<%= request.getParameter("num1") %>" readonly style = "text-align: center;">
                <br><br>
                <%= request.getParameter("operator") %>
                <br><br>
                <input type = "text" name = "num2" value = "<%= request.getParameter("num2") %>" readonly style = "text-align: center;">
                <br><br>
                <% out.println("="); %>
                <br><br>
                <input type = "text" name = "result" value = "<%= request.getAttribute("result") %>" readonly style = "text-align: center;">
            </td>
        </tr>
        <tr>
            <th colspan="2"><br></th>
        </tr>
    </table>
</body>
</html>