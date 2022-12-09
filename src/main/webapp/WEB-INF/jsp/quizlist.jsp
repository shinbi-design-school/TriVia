<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="today.start_javaweb4.model.entity.Plate" %>
	<%@ page import="java.util.List" %>
	
	<% List<Plate> list = (List<Plate>)session.getAttribute("list"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> TriVian｜正誤表 </title>
</head>
<body>
<table border=1 style="margin: auto;">
<tr>
<th>問題番号</th><th>問題文</th><th>解答</th>
</tr>
<%int i=1;
  for(Plate facter : list) {%>
<tr>
	<td><%= i %>問目</td>
	<td><%= facter.getContent()%></td>
	<td>
	<%if(facter.getAnswer() == 1) {%>
		○
	<%}else{ %>
		×
	<%} %>
	</td>
	
</tr>
<% i++;
	} %>
</table>
</body>
</html>