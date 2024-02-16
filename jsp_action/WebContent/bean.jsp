<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bean 액션 태그 예제입니다.</h1>
	<%-- <% Student student = new Student(); %> 이를 bean으로 표현하면 다음과 같다.--%> 
	<jsp:useBean id="student" class="edu.sejong.ex.Student"/>
	<%-- <% student.setName("홍길동"); %> --%>
	<jsp:setProperty name="student" property="name" value="홍길동"/>
	
	<jsp:setProperty name="student" property="age" value="13"/>
	<jsp:setProperty name="student" property="grade" value="3"/>
	<jsp:setProperty name="student" property="studentNum" value="7"/>
	
	<%-- <% student.getName(); %> --%>
	이름 : <jsp:getProperty name="student" property="name" /><br>
	
	나이 : <jsp:getProperty name="student" property="age" /><br>
	학년 : <jsp:getProperty name="student" property="grade" /><br>
	번호 : <jsp:getProperty name="student" property="studentNum" />
</body>
</html>