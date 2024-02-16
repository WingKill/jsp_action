<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String radiusStr;
	double radius;%>
<% 	radiusStr = request.getParameter("radius");
	radius = Double.parseDouble(radiusStr);%>
<jsp:useBean id="circle" class="edu.sejong.ex.Circle"/>
<jsp:setProperty name="circle" property="radius" value="<%=radius%>"/>
<h1>원의 반지름 : <jsp:getProperty name="circle" property="radius" /></h1>
<h1>원의 넓이 : 약 <jsp:getProperty name="circle" property="area" /></h1>
</body>
</html>