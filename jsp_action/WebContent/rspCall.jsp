<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>가위바위보 게임을 시작합니다!</h1>
<hr>
	<form action="rsp.jsp" method="post">
		<select name = "rsp">
			<option value = "scissor">가위
			<option value = "rock">바위
			<option value = "paper">보
		</select>
		<input type = "submit" value = "게임 시작">	 
	</form>
</body>
</html>