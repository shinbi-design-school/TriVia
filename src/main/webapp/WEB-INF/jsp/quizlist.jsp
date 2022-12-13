<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="today.start_javaweb4.model.entity.Plate" %>
	<%@ page import="java.util.List" %>
	
	<% List<Plate> list = (List<Plate>)session.getAttribute("list"); %>
	<% List<Integer> wrongId = (List<Integer>)session.getAttribute("wrongId"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/quizlist.css">
  <link rel="icon" href="${pageContext.request.contextPath}/css/images/favicon.ico">
<title> TriVian｜正誤表 </title>
<script type=text/javascript”>
	resizeTo(1536 746);
</script>
</head>

<body>
	<audio src="${pageContext.request.contextPath}/css/quizlist.mp3" autoplay loop></audio>
  <header>
    <div class="home">
      <a href="${pageContext.request.contextPath}/servlet/TopServlet">
        <img src="${pageContext.request.contextPath}/css/images/homeicon.png" alt="ホームボタン"></a>
    </div>
  </header>
  
  <h1>正誤表</h1>
  
<div class="wrapper">
<table class="sticky" style="margin: auto;">
<caption><span style="background:rgb(128, 128, 255); font-weight:600;">青は正解</span>　<span style="background:rgb(98, 0, 0); font-weight:600;">赤は不正解</span>だよ！</caption>
<thead class="fixed">
<tr>
<th>問題番号</th><th>問題文</th><th>解答</th>
</tr>
</thead>
<tbody>
<%int i=1;
  for(Plate facter : list) {%>
<tr <%if(wrongId.get(i-1) == 1){%>class="wrongId"<%}else if(wrongId.get(i-1) == 2){%>class="correctId"<%}%>>
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
</tbody>
</table>
</div>
  <div class="back">
    <a href="#" onclick="history.back(); return false;"><!-- resultに戻れない -->
      <img src="${pageContext.request.contextPath}/css/images/return.png" alt="戻るボタン"></a>
  </div>
  
  <footer>
    <p><small>&copy; 2022 TriVian.</small></p>
  </footer>
  
</body>
</html>