<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<% int colCount = (int)request.getAttribute("colCount"); %>
	<% int resCount = (int)request.getAttribute("resCount"); %>
	<% String rank = (String)request.getAttribute("rank");  %>
	<%
		String message=String.format("あなたは%d問中%d問正解しました！<br>",resCount, colCount);
		if(rank.equals("金")){
			message+="凄すぎる！!トリビア王に君はなる！！！";
			rank="<span style= color:gold>金</span>";
		}else if(rank.equals("銀")){
			message+="十分凄い！！めちゃめちゃ物知りですねぇ...。";
			rank="<span style= color:gray>銀</span>";
		}else if(rank.equals("銅")){
			message+="ナイス健闘！！いいね！！";
			rank="<span style= color:maroon>銅</span>";
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
<title>TriVian | リザルト！</title>
<style>
	#god{
		 color: #40E0D0;
  		background: -webkit-linear-gradient(0deg,#40E0D0, #FF8C00, #FF0080);
  		-webkit-background-clip: text;
  		-webkit-text-fill-color: transparent;
  		font-size:2em;
	}
</style>
</head>
<body>
	<h2 style="text-align:center">～結果発表～</h2>
	<h4 style="margin-left:30%;">あなたのランクは...</h4>
	<h1 style="text-align:center;"><%=rank%>ランク</h1>
	<h4 style="text-align:right; margin-right:40%;">です！</h4>
	<h3 style="text-align:center;"><%=message%></h3>
	
	<%if(rank.matches(".*金.*")){ %>
	<img src="${pageContext.request.contextPath}/css/images/undoukai_torophy_gold.png" alt="金トロフィ" title="金トロフィ">
	
	<%}else if(rank.matches(".*銀.*")){ %>
	<img src="${pageContext.request.contextPath}/css/images/undoukai_torophy_silver.png" alt="銀トロフィ" title="銀トロフィ">
	
	<%}else if(rank.matches(".*銅.*")){ %>
	<img src="${pageContext.request.contextPath}/css/images/undoukai_torophy_bronze.png" alt="銅トロフィ" title="銅トロフィ">
	
	<%}else if(rank.matches(".*道端の小石.*")){ %>
		画像なんかねえよ。
	<%}else{%>
	<img src="${pageContext.request.contextPath}/css/images/undoukai_goddess.png" alt="goddess" title="崇めよ崇めよ崇めよ崇めよ崇めよ(ry">	
	<% }%>
	
	<form method="GET" action="${pageContext.request.contextPath}/servlet/TopServlet">
		<input type="submit" value="タイトルへ戻る" >
	</form>
	
</body>
</html>