<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="lotto" class="edu.sejong.ex.Lotto"/>
로또 번호 : <jsp:getProperty property="lottoStr" name="lotto"/>
<a href="lotto.jsp">되돌아가기</a> 
</body>
</html>