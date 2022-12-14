# TriVia
クイズシステム (SHINBIデザインスクール Java・Webプログラミング科4期 卒業制作)
２０２２年１２月１５日  
NAYUTAチーム　のTriVianプロジェクト   　
クイズシステムの発表をさせていただきます。  
製作者氏名　久保島祐季　染谷孝太　大出成美  
クイズシステムで使用した言語は Java JavaScript HTML　CSS  
開発環境 Eclipse MySQL Apache
ブラウザ確認はedgeで行っております。  
## NAYUTAチームの紹介  
Java・Webプログラミング科4期(2022.6～2022.12)生の  
3人が先輩方のクイズアプリや今までのプリントをもとに、作品を制作致しました。  
制作は、Javaを使用したクイズゲームの作成、開発環境は習得したことを活用、  
チームに分かれ設計から構築に関して、基本はチームで考え、わからない時には  
クラスメイトで得意な人に知恵を借りる、それでも本当に困ったときに先生方には助けていただく、  
という形で制作を行ってきました。  
NAYUTAチームは久保島・染谷・大出の三人でチームの雰囲気は自分ができること、やりたいことを  
黙々と取り組めるチームでした。  
バックエンド側の制作を染谷が、要件定義　設計や開発まで担当しました。  
フロントエンド側は大出がデザインを中心となり行い、久保島はスケジュール管理・  
ドキュメント作成をチームで協力して行いました。  
スケジュール的にはチームを組んでから10日ほどはクイズゲームの要件定義や  
フローチャート、基本設計を相談してきました。中間発表あたりから動くものをと考え、  
染谷と大出で中心に作成してきました。  
12月に入ってから最低限動くものが作成できていたので、正誤表を付け加えることに  
シフトチェンジし、エラーやレイアウト整えを中心に一週間は調整してきました。  
途中、大出が就職のため退所いたしましたがほぼ完成に近づいていたので、  
レイアウト調整のみ染谷が、対応しました。  
## クイズシステムとしては  
コンセプトは大人から子供まで楽しめる、また会話のスキマに挟めるクイズとして作り  
ました。デザインは学校に出てくるものを使用しています。たとえ寝ていてもタイトルの  
チョークは飛んできませんのでご安心を。懐かしく学ぶような感覚でクイズをただ  
ひたすら100問解き続けてくださいね。回答形式は簡単に○×形式にしており、制限時間は  
180秒でも全問解けるなら解いてみろという制限時間になっています。  
ジャンルは会話のスキマに挟めるというところであまり難しくないジャンルにしました。  
これならもし会話で穴が開いたときにそっと挟めると思います。  
## ゲームの機能  
* スタートを押すことによりTriVianを開始できる。  
* クイズは二択で○×ボタンで解答する。  
* クイズの途中でもいつでもホーム画面に戻る機能。  
* 問題は一覧で表示する。  
* 時間で結果発表になる。
* 正誤表を一覧で表示する機能。  
* 全タイトルタグにファビコン付き。  

<img alt="title" src="https://user-images.githubusercontent.com/108499166/207750539-c2f6d00c-c5ae-4129-8340-dcb0c8c97357.png" width="{500}">  
  
## TriVianの進め方/使い方  
* trivia.sqlでデータベースを作成してからTopServletを起動。
* スタートボタンを押します。  
* スタートするとクイズ画面に移ります。
* 解答は、100問につき180秒間の制限時間を設定しており、左画面の残り時間が
0になると、結果画面に移動します。
* クイズ出題画面が表示された時点で、タイマーがスタートしますのでご注意ください。
* 2択○×から正答と思われるボタンを選んでください。
* クリックすることで、解答となります。
* 残り時間が0になると結果発表になります。
* 正誤表で確認できますので全問正解目指して  
# **Let’s　Try！！**
