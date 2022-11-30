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
	<div id="timer" style = "border: 3px red inset;">一応ここにタイマーおいてね♡</div>
	  <form method="POST" action="${pageContext.request.contextPath} /servlet/result">
	  <% int i = 1; 
	for(Plate facter : list) { %>
		<div style="display: inline-block; ">
		<%=i%>   
		<%=facter.getContent() %>
		
		<label><input type="radio" name="<%= facter.getId() %>" value="1" >〇</label>
		<label><input type="radio" name="<%= facter.getId() %>" value="2" >×</label>
		</div>
		<br>
		<%i++; %>
	<% } %>
	</form>
	
	<script>
	function timer(){
			var sec = 180;
			var timerLocation = document.getElementById("timer");
			var st = new Date();
			var ed = new Date(st.getTime + sec * 1000);
					timerLocation.innerHTML = "残り時間：　" + sec + "秒";
			var count = sec;
			var timerRun = setInterval(function(){
					count--;
					timerLocation.innerHTML="残り時間：　" + count + "秒";
					st = new Date();
					if(st.getTime() >= ed.getTime()){
						clear.Interval(timerRun);
						}


				}, 1000);

		}
	</script>
	
</body>
</html>