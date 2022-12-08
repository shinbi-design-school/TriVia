<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="today.start_javaweb4.model.entity.Plate" %>
	<%@ page import="java.util.List" %>
	
	<% List<Plate> list = (List<Plate>)session.getAttribute("list"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/quizlist.css">
  <link rel="icon" href="${pageContext.request.contextPath}/css/images/favicon.ico">
<title> TriVia｜正誤表 </title>
</head>

<body>
  <header>
    <div class="home">
      <a href="${pageContext.request.contextPath}/servlet/TopServlet">
        <img src="${pageContext.request.contextPath}/css/images/homeicon.png" alt="ホームボタン"></a>
    </div>
  </header>
  

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

  <div class="back">
    <a href="${pageContext.request.contextPath}/servlet/ResultServlet"><!-- resultに戻れない -->
      <img src="${pageContext.request.contextPath}/css/images/return.png" alt="戻るボタン"></a>
  </div>
  
  <footer>
    <p><small>&copy; 2022 TriVian.</small></p>
  </footer>
  
</body>
</html>