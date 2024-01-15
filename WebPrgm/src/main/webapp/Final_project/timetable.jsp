<%--컴퓨터학과 20220777 신유주--%>
<%--Microsoft edge 최적화됨--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr36.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="lb" class="jspbook.pr36.LectureBean"/>
<jsp:useBean id="lm" class="jspbook.pr36.LectureManager" scope="session"/>
<jsp:setProperty name="lb" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Final_timetable</title>
<style>
table, th, td {
	width: 650px;
	height: 65px;
	border: solid 1px;
	border-collapse: collapse;
	text-align: center;
}
.mandatory {
	background-color: #FFE08C;
}
.selection {
	background-color: #B2CCFF;
}
.liberal {
   background-color: #BDBDBD;
}
</style>
</head>
<body>
<%
	int[][] lectureType = lm.getTypeMatrix(); //강의타입 행렬
	int[][] lectureTitle = lm.getTitleMatrix(); //강의제목 행렬
	int[][] consecutive = lm.getSpanMatrix(); //연강여부 행렬

	String[] typeNames = LectureBean.getTypenames();
	String[] titleNames = LectureBean.getTitlenames();
	String[] dayNames = LectureBean.getDaynames();
%>
<%
	out.println("<div align = center>"); 
		out.println("<form method = \"GET\" action = \"timetable.jsp\">");
		
		//과목타입 선택
		out.println("과목타입: <select name = \"type\">");
		for (int i = 0; i < typeNames.length; i++) {
			out.println("<option value =" + i + ">" + typeNames[i] + "</option>");
		}
		out.println("</select>");
	
		//과목명 선택
		out.println("과목명: <select name = \"title\">");
		for (int i = 0; i < titleNames.length; i++) {
			out.println("<option value =" + i + ">" + titleNames[i] + "</option>");
		}
		out.println("</select>");
		
		//요일 선택
		out.println("요일: <select name = \"day\">");
		for (int i = 0; i < dayNames.length; i++) {
			out.println("<option value =" + i + ">" + dayNames[i] + "</option>");
		}
		out.println("</select>");
		
		//시간 선택
		out.println("시간: <select name = \"time\">");
		for (int i = 1; i <= 6; i++) {
			out.println("<option value =" + i + ">" + i + "</option>");
		}
		out.println("</select>");
		
		//연강 선택
		out.println("연강여부: <select name=\"consecutive\">");
	   	for (int i = 1; i <= 6; i++) {
	   	   out.println("<option value =" + i + ">" + i + "</option>");
	   	}
	   	out.println("</select>");
		
		out.println("<input type = \"submit\" value = \"등록\">");
		
		out.println("</form>");
		out.println("<hr>");
	
		//모든 정보가 선택되었으면
		if (lb.getType() != -1 && lb.getTitle() != -1 && lb.getDay() != -1 && lb.getTime() != -1 && lb.getConsecutive() != -1) {
			  lm.add(lb); //강의 목록에 강의 추가
			  lm.buildMatrix(lb); //시간표 구성
		} else { //아니면 초기화
			  lm.init();
		}
%>
<%--시간표--%>
<%
	out.println("<h2>강의 시간표</h2>");
	
	out.println("<table>");
	
	out.println("<tr>");
	String[] week = {"2학년", "월", "화", "수", "목", "금"};
	for (int i = 0; i < week.length; i++) {
		out.println("<th>" + week[i] + "</th>");
	}
	out.println("</tr>");
	
	out.println("<tr>");
	for (int i = 0; i < 6; i++) { 
		out.println("<th>" + (i + 1) + "</th>");
		
		for (int j = 0; j < 5; j++) { //강의 스케줄 
			if (consecutive[i][j] == 0) 
				continue; //해당 칸에 강의가 없는 경우 건너뜀
			
			//전공필수 mandatory, 전공선택 selection, 교양 liberal
			//강의 유형에 따라 스타일 다르게 정하기 위함
			if (lectureType[i][j] == 1)
				out.print("<td class = \"mandatory\"");
			else if (lectureType[i][j] == 2)
				out.print("<td class = \"selection\"");
			else if (lectureType[i][j] == 3)
				out.print("<td class = \"liberal\"");
			else if (lectureType[i][j] == 0 || lectureType[i][j] == 4)
				out.print("<td");
			
			if (consecutive[i][j] == 1)
				out.print(">"); //연강 아닐 경우 td 태그 닫기
			else //연강만큼 칸 합치기
				out.print(" rowspan = \"" + consecutive[i][j] + "\">");
			
			//강의 없으면 빈칸, 있으면 강의 제목 출력
			if (lectureTitle[i][j] == -1)
				out.print("&nbsp;");
			else
				out.print(titleNames[lectureTitle[i][j]]);
			
			out.println("</td>");
		}
		out.println("</tr>");
	}
	
	out.println("</table><br><hr><br>");
	
	//강의 정보 출력
	for (LectureBean b : lm.getLectureList()) 
		out.println(b.toString());
	
	out.println("</div>");
%>
</body>
</html>