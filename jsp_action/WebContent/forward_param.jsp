<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	String s = request.getParameter("id");
	String y = request.getParameter("pw");%>
<h1>forward_param.jsp입니다.</h1>
<hr>
<h1>
	ID : <%=s %>,<br> PW : <%= y %> <br>
	전달방식 : <%= request.getMethod() %>
</h1>
</body>
</html>