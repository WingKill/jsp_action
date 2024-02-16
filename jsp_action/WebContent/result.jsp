<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!	String name;
	double kor; 
	double eng;
	double math;
	%>
<%	request.setCharacterEncoding("UTF-8");
	name = request.getParameter("name");
	kor = Double.parseDouble(request.getParameter("kor"));
	eng = Double.parseDouble(request.getParameter("eng"));
	math = Double.parseDouble(request.getParameter("math"));%>
	
<jsp:useBean id="grade" class="edu.sejong.ex.Grades"/>
<jsp:setProperty property="name" name="grade" value="<%= name %>"/>
<jsp:setProperty property="kor" name="grade" value="<%= kor %>"/>
<jsp:setProperty property="eng" name="grade" value="<%= eng %>"/>
<jsp:setProperty property="math" name="grade" value="<%= math %>"/>

<h1>이름 : <jsp:getProperty property="name" name="grade" /></h1>
<hr>
<h1>국어 : <jsp:getProperty property="kor" name="grade" />점</h1>
<h1>영어 : <jsp:getProperty property="eng" name="grade" />점</h1>
<h1>수학 : <jsp:getProperty property="math" name="grade" />점</h1>
<hr>
<h1>총점 : <jsp:getProperty property="sum" name="grade" /></h1>
<h1>평균 : <jsp:getProperty property="avg" name="grade" />점</h1>
<h1>등급 : <jsp:getProperty property="grade" name="grade" /></h1>
<hr>	
</body>
</html>