<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <% int colCount = (int)request.getAttribute("colCount"); %>
  <% int resCount = (int)request.getAttribute("resCount"); %>
  <% String rank = (String)request.getAttribute("rank");  %>
  <% session.setAttribute("wrongId", request.getAttribute("wrongId")); %>
  
  <%
    String message=String.format("あなたは%d問中%d問正解しました！<br>",resCount, colCount);
    if(rank.equals("金")){
      message+="凄すぎる！!トリビア王に君はなる！！！";
      rank="<span style= color:gold;font-size:2em;>金</span>";
    }else if(rank.equals("銀")){
      message+="十分凄い！！めちゃめちゃ物知りですねぇ...。";
      rank="<span style= color:gray;font-size:1.5em;>銀</span>";
    }else if(rank.equals("銅")){
      message+="ナイス健闘！！いいね！！";
      rank="<span style= color:maroon;>銅</span>";
    }else if(rank.equals("道端の小石")){
      message+="実際のあなたには「<span style=color:red >意思</span>」すらない...。";
      rank="<span style= color:darkgrey>道端の小石</span>";
    }else{
      message+="おおっ神がご降臨なすった！！崇めねば！！！";	
      rank="<span id = god>神</span>";
    }

  %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/popstate.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/result.css">
<link rel="icon" href="${pageContext.request.contextPath}/css/images/favicon.ico">
<title>TriVian | リザルト！</title>
<style>

  #god{
     color: #40E0D0;
      background: -webkit-linear-gradient(0deg,#40E0D0, #FF8C00, #FF0080);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      font-size:3em;
  }

</style>
<script>
	resizeTo(1536,746);
</script>
</head>

<body onload="resultbgm()">
	<script>
	function resultbgm(){
		<%if(rank.matches(".*神.*")){ %>
    var music = new Audio("${pageContext.request.contextPath}/css/youaregod.mp3");
    <%  }else{ %>
    var music = new Audio("${pageContext.request.contextPath}/css/resultbgm.mp3");
    <% } %>
	var musicplay = function(){
		music.play();
	}
	setTimeout(musicplay, 3000);
}
	</script>
	<audio src="${pageContext.request.contextPath}/css/result.mp3" autoplay></audio>
	
  <header>
    <div class="home">
      <a href="${pageContext.request.contextPath}/servlet/TopServlet">
        <img src="${pageContext.request.contextPath}/css/images/homeicon.png" alt="ホームボタン" title="タイトルへ戻る"></a>
    </div>
  </header>

  <h2 style="text-align:center">～結果発表～</h2>
  <h4 style="margin-left:30%;">あなたのランクは...</h4>
  <h1 style="text-align:center;"><%=rank%>ランク</h1>
  <h4 style="text-align:right; margin-right:40%;">です！</h4>
  <h3 style="text-align:center;"><%=message%></h3>
  
  <%if(rank.matches(".*金.*")){ %>
  <div class="trophy">
    <img class="left" src="${pageContext.request.contextPath}/css/images/undoukai_trophy_gold.png" alt="金トロフィ" title="金トロフィ">
    <img class="right" src="${pageContext.request.contextPath}/css/images/undoukai_trophy_gold.png" alt="金トロフィ" title="金トロフィ">
  </div>
  <%}else if(rank.matches(".*銀.*")){ %>
  <div class="trophy">
    <img class="left" src="${pageContext.request.contextPath}/css/images/undoukai_trophy_silver.png" alt="銀トロフィ" title="銀トロフィ">
    <img class="right" src="${pageContext.request.contextPath}/css/images/undoukai_trophy_silver.png" alt="銀トロフィ" title="銀トロフィ">
  </div>
  <%}else if(rank.matches(".*銅.*")){ %>
  <div class="trophy">
    <img class="left" src="${pageContext.request.contextPath}/css/images/undoukai_trophy_bronze.png" alt="銅トロフィ" title="銅トロフィ">
    <img class="right" src="${pageContext.request.contextPath}/css/images/undoukai_trophy_bronze.png" alt="銅トロフィ" title="銅トロフィ">
  </div>
  <%}else if(rank.matches(".*道端の小石.*")){ %>
  <div class="trophy">
    <img class="left" src="${pageContext.request.contextPath}/css/images/nature_stone_ishi1.png" alt="道端の小石" title="道端の小石">
    <img class="right" src="${pageContext.request.contextPath}/css/images/nature_stone_ishi1.png" alt="道端の小石" title="道端の小石">
  </div>
  <%}else{%>
    <div class="trophy">
    <img class="left" src="${pageContext.request.contextPath}/css/images/undoukai_goddess.png" alt="goddess" title="崇めよ崇めよ崇めよ崇めよ崇めよ(ry">	
    <img class="right" src="${pageContext.request.contextPath}/css/images/undoukai_goddess.png" alt="goddess" title="崇めよ崇めよ崇めよ崇めよ崇めよ(ry">
    </div>	
  <% }%>
  <div id="menu">
  <form id="title" method="GET" action="${pageContext.request.contextPath}/servlet/TopServlet">
    <input class="button tag red" type="submit" value="タイトルへ戻る" >
  </form>
  
  <form method="GET" action="${pageContext.request.contextPath}/servlet/Quizlist">
    <input class="button tag green" type="submit" value="正誤表を見る" >
  </form>
  
  </div>
  <footer>
    <p><small>&copy; 2022 TriVian.</small></p>
  </footer>
  
</body>
</html>