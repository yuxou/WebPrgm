<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice30_member</title>
<style>
        table {
            border: solid 1px ;
            border-collapse: collapse;
            margin-right: auto;
            margin-left: auto;
        }
        th {
            background-color: #ececec; 
            font-weight: bold;
        }
        td {
            text-align: left;
        }
        table, th {
            text-align: center;
        }
        table, th, td {
            border: 2px solid black;
        }
    </style>
</head>
<body>
    <form action = "register.jsp">
        <table>
            <tr>
                <input type="image" src="image/eclass_title.jpg" style="display: block; margin: 0 auto;">
            </tr>
            <tr>
                <th colspan="2">회원 가입</th>
            </tr>
            <tr>
                <th>아이디</th>
                <td>
                    <input type="text" name = "id">
                    <input type="image" src="image/check.gif" style="vertical-align: middle;">
                </td>
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" name = "pw"></td>
            </tr>
            <tr>
                <th>성별</th>
                <td>
                    <input type="radio" name="gender" value="0">남
                    <input type="radio" name="gender" value="1" checked>여
                </td>
            </tr>
            <tr>
                <th>국적</th>
                <td>
                    <input id="nationality" type="text" value="대한민국">
                    <input type="reset" value="국적변경" onclick="changeNationality()">
                </td>
            </tr>
            <tr>
                <th>휴대폰</th>
                <td>
                    <select name="phone1">
                        <option value="0" selected>010</option>
                        <option value="1">011</option>
                        <option value="2">017</option>
                        <option value="3">070</option>
                        <option value="4">080</option>
                    </select>
                    - <input name="phone2" type="text" style="width: 80px;">
                    - <input name="phone3" type="text" style="width: 80px;">
                </td>
            </tr>
            <tr>
                <th>이메일</th>
                <td><input name="email" type="text" style="width: 300px;"></td>
            </tr>
            <tr>
                <th>생일</th>
                <td><input name="birth" type="date"></td>
            </tr>
            <tr>
                <th>관심분야</th>
                <td>
                    <input type="checkbox" name="hobby" value="0">뉴스
                    <input type="checkbox" name="hobby" value="1" checked>맛집
                    <input type="checkbox" name="hobby" value="2">책
                    <input type="checkbox" name="hobby" value="3">영화
                    <input type="checkbox" name="hobby" value="4">여행
                </td>
            </tr>
            <tr>
                <th>가입인사</th>
                <td>
                    <textarea name = "memo" cols="60" rows="5" placeholder="회원들에게 간단한 가입인사를 남겨주세요"></textarea>
                </td>
            </tr>
            <tr>
                <th>증명사진</th>
                <td><input type="file"></td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" value="가입하기">
                    <input type="reset" value="다시 작성">
                </th>                  
            </tr>
        </table>
    </form>
    <script>
        function changeNationality() {
            document.getElementById("nationality").value = " ";
        }
    </script>
</body>
</html>