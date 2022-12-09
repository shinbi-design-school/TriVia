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
	resizeTo(1300,746);
</script>
</head>

<body onload="resizeTo(1300,746)">
  <top class="title">
    <p id="keytitle" title="ようこそ！">TriVian</p>
    <p id="subtitle">~トリビアン~</p>
  </top>
<audio src="${pageContext.request.contextPath}/css/chaim.mp3" autoplay></audio>
  <h3>
    <p>・これは制限時間付きのクイズ１００問ゲームです。</p>
    <p>・〇✕のボタンを押して答えを選んで下さい。</p>
    <p>・スタートを押したら回答ページへ進みます。</p>
  </h3>

  <div>
    <div class="chalk_w">
      <form method="get" action = "${pageContext.request.contextPath}/servlet/Quiz">
	<input type = "submit" value = "スタート" >
	</form>
    </div>
  </div>

  <footer>
    <p><small>&copy; 2022 TriVian.</small></p>
  </footer>
  

</body>
</html>
<!-- webappの下にjspおけば普通に起動できるが　 -->