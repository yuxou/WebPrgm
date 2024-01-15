<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_17</title>
</head>
<body>
<%!
	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"};
	
	ArrayList<String> getParameterNames(HttpServletRequest request) {
		ArrayList<String> parameterNameList = new ArrayList<String>();
		Enumeration<String> parameterNames = request.getParameterNames();
		
		while (parameterNames.hasMoreElements()){ 
			String name = parameterNames.nextElement();
			parameterNameList.add(name);
		}
		
		return parameterNameList;
	}
	
	boolean isMultipleChoice(String paramName) {
		for (int i = 0; i < mChoices.length; i++) {
			if (mChoices[i].equals(paramName))
				return true;
		}
		return false;
	}
%>

<%
	ArrayList<String> list = getParameterNames(request);

	for (int i = 0; i < list.size(); i++) {
		if (isMultipleChoice(list.get(i))) {
			String mul[] = request.getParameterValues(list.get(i));
			out.print(list.get(i) + " : ");
			
			for (int j = 0; j < mul.length; j++)
				out.print(mul[j] + "/");		
			out.println("<br>");
		} else {
			out.println(list.get(i) + " : " + request.getParameter(list.get(i)) + "<br>");
		}
	}
	
	out.println("<hr>");	
	out.println("<h1>Processing Parameters</h1>");
	
	for (int i = 0; i < list.size(); i++) {
		if (isMultipleChoice(list.get(i))) {
			String mul[] = request.getParameterValues(list.get(i));
			out.print(list.get(i) + " : ");
			
			for (int j = 0; j < mul.length; j++) 
				out.print(hobbyNames[Integer.parseInt(mul[j])] + " / ");
			out.println("<br>");
		} else {
			if (list.get(i).equals("gender")) {
				out.print(list.get(i) + " : ");
				out.println(gNames[Integer.parseInt(request.getParameter(list.get(i)))] + "<br>");
			} else if (list.get(i).equals("phone1")) {
				out.print(list.get(i) + " : ");
				out.println(telCompany[Integer.parseInt(request.getParameter(list.get(i)))] + "<br>");
			} else {
				out.print(list.get(i) + " : ");
				out.println(request.getParameter(list.get(i)) + "<br>");
			}
		}
	}
%>
</body>
</html>