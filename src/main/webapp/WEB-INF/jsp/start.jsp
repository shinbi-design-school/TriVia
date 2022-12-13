<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/top.css">
<link rel="icon" href="${pageContext.request.contextPath}/css/images/favicon.ico">
<title>TriVian | タイトル</title>
<script type=text/javascript”>
	resizeTo(1536,746);
</script>
</head>

<body>
  <div class="title">
    <p id="keytitle" title="ようこそ！">TriVian</p>
    <p id="subtitle">~トリビアン~</p>
  </div>
<audio src="${pageContext.request.contextPath}/css/chaim.mp3" autoplay></audio>
  <div id="explain">
    <h3>・これは制限時間付きのクイズ１００問ゲームです。</h3>
    <h3>・〇✕のボタンを押して答えを選んで下さい。</h3>
    <h3>・スタートを押したら回答ページへ進みます。</h3>
  </div>

  <div id = "start">
    <div class="chalk_w">
      <form method="get" action = "${pageContext.request.contextPath}/servlet/Quiz">
	    <input type = "submit" value = "スタート" >
	  </form>
    </div>
  </div>

  <footer>
    <p><small>&copy; 2022 TriVian.</small></p>
  </footer>
  
  <img id="nayuta" src="${pageContext.request.contextPath}/css/images/presentedbynayuta.png" alt="制作グループ名" title="制作グループ名">

</body>
</html>
<!-- webappの下にjspおけば普通に起動できるが　 -->