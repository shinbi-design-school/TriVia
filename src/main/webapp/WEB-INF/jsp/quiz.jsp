<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="today.start_javaweb4.model.entity.Plate" %>
<%@ page import="java.util.List" %>
    
    <%List<Plate> list = (List<Plate>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trivia | Let`s Quiz!</title>

</head>
<body style="text-align:center;" onload="timer()">

	<h1 style="font-size: 2em;">問題</h1>
	<div id="timer" style = "border: 3px red inset; ">一応ここにタイマーおいてね♡</div><br>
	  <form method="GET" action="${pageContext.request.contextPath} /servlet/Result">
	  <% int i = 1; 
	for(Plate facter : list) { %>
		<div style="display: inline-block; ">
		<%=i%>   
		<%=facter.getContent() %>
		<input type="hidden" name="colAns<%= i %>" value=<%= facter.getAnswer() %>>
		<label><input type="radio" name="yourAns<%=i%>" value="1" >〇</label>
		<label><input type="radio" name="yourAns<%=i%>" value="2" >×</label>
		<label><input type="radio" name="yourAns<%=i%>" value="0" checked="checked" style="display: none;"></label>
		</div>
		<br>
		<%i++; %>
	<% } %>
	
	<div style="visibility: hidden;">
	<input id="answer" type="submit" value = "これ見えてるやつおりゅ？">
	</div>
	</form>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/timer.js"></script>
	
</body>
</html>