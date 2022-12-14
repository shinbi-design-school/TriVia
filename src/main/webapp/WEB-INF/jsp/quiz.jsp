<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="today.start_javaweb4.model.entity.Plate" %>
<%@ page import="java.util.List" %>
    
    <%List<Plate> list = (List<Plate>)request.getAttribute("list"); %>
    <% session.setAttribute("list", request.getAttribute("list"));%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/quiz.css">
<link rel="icon" href="${pageContext.request.contextPath}/css/images/favicon.ico">
<title>TriVian | Let`s Quiz!</title>
<script type=text/javascript”>
	resizeTo(1536,746);
</script>
</head>

<script type="text/javascript">
function ring() {
		var button = document.getElementById("button");
		button.currentTime = 0;
	   button.play();
	}
</script>
<body style="text-align:center;" onload="timer(180)">

	<audio src="${pageContext.request.contextPath}/css/quiztime.mp3" autoplay loop></audio>
	<audio id="button" preload="auto">
   <source src="${pageContext.request.contextPath}/css/select.mp3" type="audio/mp3">
   </audio>
  <header>
    <div class="home">

	  <a href="${pageContext.request.contextPath}/servlet/TopServlet">

        <img src="${pageContext.request.contextPath}/css/images/homeicon.png" alt="ホームボタン" title="タイトルへ戻る"></a>
    </div>
  </header>

  <h1 style="font-size: 2em;">問題</h1>
  <div id="timer" style = "border: 3px red inset; ">スタート！！</div><br>
    <form method="GET" action="${pageContext.request.contextPath}/servlet/Result">
    <% int i = 1; 
  for(Plate facter : list) { %>
    <div style="display: inline-block; ">
    <span style="font-weight:900;"><%=i%>:</span>   
    <%=facter.getContent() %>
    <input type="hidden" name="colAns<%=i%>" value=<%= facter.getAnswer() %>>
    <input type="radio" name="yourAns<%=i%>" value="1" id="circle<%=i%>" onclick="ring()"><label for="circle<%=i%>" class="label">○</label>
    <input type="radio" name="yourAns<%=i%>" value="2" id="cross<%=i%>" onclick="ring()"><label for="cross<%=i%>" class="label"> × </label>
    <input type="radio" name="yourAns<%=i%>" value="0" checked="checked" style="display: none;">
    </div>
    <br>
    <%i++; %>
  <% } %>
  
  <div style="visibility: hidden;">
  <input id="answer" type="submit" value = "これ見えてるやつおりゅ？">
  </div>
  </form>
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/timer.js"></script>
  
  <footer>
    <p><small>&copy; 2022 TriVian.</small></p>
  </footer>
  
  
</body>
</html>