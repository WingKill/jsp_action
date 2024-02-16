<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!	String rsp; %>
<%	rsp = request.getParameter("rsp"); %>
<jsp:useBean id="rspCom" class="edu.sejong.ex.Rsp"/>
<jsp:useBean id="rspPlayer" class="edu.sejong.ex.Rsp"/>
<jsp:setProperty property="rspStr" name="rspPlayer" value="<%= rsp %>"/>
<% rspCom.setMessage(rspPlayer); %>

컴퓨터 : <jsp:getProperty property="rspStr" name="rspCom"/><br>
플레이어 : <jsp:getProperty property="rspStr" name="rspPlayer"/><br>
<hr>
<jsp:getProperty property="message" name="rspCom"/>
</body>
</html>