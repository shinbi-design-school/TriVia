<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TriVia</title>
</head>
<body>
<form method="get" action = "${pageContext.request.contextPath}/servlet/Quiz">
	<input type = "submit" value = "start" >
</form>
</body>
</html>
<!-- webappの下にjspおけば普通に起動できるが　 -->