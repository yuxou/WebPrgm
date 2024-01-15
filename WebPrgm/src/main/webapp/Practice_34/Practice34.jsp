<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_34</title>
</head>
<body>
	<h1>Processing Parameters</h1>

	id: ${param.id} <br>
	pw: ${param.pw} <br>
	gender: ${param.gender} <br>
	phone1: ${param.phone1} <br>
	phone2: ${param.phone2} <br>
	phone3: ${param.phone3} <br>
	email: ${param.email} <br>
	birth: ${param.birth} <br>
	<%
        String[] selected = request.getParameterValues("hobby");
	
        int count = 0;
        
        if (selected != null) {
            for (String hobby : selected) {
                count++;
            }
        }
     
        session.setAttribute("selectedHobbies", selected);
    %>
    hobby: 선택된 관심분야 <%= count %>개 <br>
	[0]: ${sessionScope.selectedHobbies[0]} <br>
	[1]: ${sessionScope.selectedHobbies[1]} <br>
	[2]: ${sessionScope.selectedHobbies[2]} <br>
	[3]: ${sessionScope.selectedHobbies[3]} <br>
	[4]: ${sessionScope.selectedHobbies[4]} <br>
</body>
</html>