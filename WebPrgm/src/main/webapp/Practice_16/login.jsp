<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice16_login</title>
<style>
        table {
            margin-left: auto;
            margin-right: auto;
        }
        table, td {
            border-collapse: collapse;
            text-align: center;
        }
        th {
            text-align: left;
        }
        .input {
            width: 200px;
            background-color: #fef283d1;
  
        }
        .left {
            text-align: left;
        }
    </style>
</head>
<body>
<form name="frm1" method = "post" action = "result.jsp">
    <table>
        <tr>
            <th colspan="2"><input type="image" src="image/eclass_title.jpg"></th>
        </tr>
        <tr>
            <td colspan="2"><h2>로그인</h2></td>
        </tr>
        <tr>
            <th><hr style="border: solid 1px gray; width: 964px;"></th>
        </tr>
    </table>
    <table>
        <tr>
            <td rowspan="6"><input type="image" src="image/eclass_logo.png" style="text-align: right;"></td>
            <th colspan="2">회원님의 아이디와 비밀번호를 정확히 입력하세요.</th>
        </tr>
        <tr>
            <th></th>
            <td class="left">
                <select name="type">
                    <option value="학부생">학부생</option>
                    <option value="대학원생">대학원생</option>
                    <option value="교직원">교직원</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>아이디</th>
            <td class="left"><input type="text" name="strID" class="input"></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td class="left"><input type="password" name="strPwd" class="input"></td>
        </tr>
        <tr>
            <th colspan="2">
                <input type="submit" value="로그인">
                <input type="button" value="가입하기" onclick="document.location='member2.html'">
            </th>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>