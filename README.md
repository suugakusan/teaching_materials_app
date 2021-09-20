# 教材シェア
&emsp;教材を投稿し合うアプリケーションです。ユーザーが授業で使っているプリントや参考資料などをアップロードして、投稿できます。
投稿されたデータが一覧に表示され、誰でもその教材をダウンロードすることができます。

## アプリ作成背景
&emsp;教員として、働く中で生徒と向き合う時間が十分に取れないほど、数多くの仕事で溢れていました。本来であれば、教材研究する時間を確保し、生徒に実りある学習を提供しなければいけません。
しかし、それ以外の業務に時間をかけており、教材研究が全くできないのが今の現状です。同僚も同じように、授業の準備をする時間がないことを悩んでいました。  
 &emsp;そこで、教材を共有する場を提供することができれば、教員が抱える課題の解決の一助になるのではないかと思い制作しました。
### URL
https://teaching-materials-app.herokuapp.com/
## 工夫した点
* ユーザーの入力負担を減らすために、教科をセレクトボックスで選択できるよう実装しました。
* 検索機能を、内容と教科で２つ作成しました。
### 機能一覧
|  |機能  |gem  |
|:---: |:---: |:---: |
|1  |ログイン・ログアウト  |×  |
|2  |アカウント登録  |×  |
|3  |教材検索 |×  |
|4  |教材投稿  |×  |
|5  |ページネーション |pagy  |
|6  |レスポンシブ  |Bootstrap  |
|7  |ゲストログイン  |×  |
|8  |記事投稿機能(CRUD)  |×  |
|9  |お気に入り機能  |×  |
|10  |フォロー機能  |×  |
### ER図
### 使用技術
* 言語 : Ruby (3.0.0)
* フレームワーク：Ruby on Rails (6.1.4.1)
* フロントエンド : HTML&CSS/Bootstrap
* DB : PostgreSQL
* インフラ : Heroku
* ソースコード管理：GitHub
### 開発環境
* OS : windows Lenovo
* Visual Studio Code
