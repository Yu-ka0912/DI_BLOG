<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<title>D.I.Blog</title>
	<style type="text/css">
#header {
	top: 156px;
	left: 0px;
	width: 100%;
	height: 60px;
	background-color: black;
}

header ul {
	line-height: 35px;
}
#nav-list{
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}
#nav-list li {
	font-weight: bold;
	float: left;
	color: white;
	list-style: none;
	padding-left: 25px;
	font-size: 20px;
	padding-right: 20px;
	padding-top: 15px;
}
#nav-list li a {
	color: white;
}
#main {
	clear: both;
}

.box {
	width: 100%;
	margin: 0 auto;
	margin-top: 60px;
}

.left {
	float: left;
	border: 3px solid blue;
	width: 64%;
	height: 1500px;
}

.right {
	float: left;
	border: 3px solid red;
	width: 34%;
	height: 1500px;
}

.moji {
	border-bottom: 2px solid black;
	border-left: 3px solid black;
	padding-left: 5px;
	font-size: 25px;
	font-weight: bold;
}

.left img {
	width: 100%;
	height: 700px;
}

.teikyou {
	padding-left: 20px;
	padding-bottom: 15px;
}

.kiji {
	padding-left: 20px;
	padding-bottom: 5px;
}

.kijinakami {
	background-color: lightgray;
	width: 100%;
	height: 620px;
	text-align: center;
}

.kijinakami .kijinakami_gazou {
	display: inline-block;
}

.kijinakami img {
	width: 230px;
	height: 210px;
}

.kijinakami_gazou {
	margin-top: 30px;
}

h3 {
	width: 100;
	border-bottom: solid 3px lightgrey;
	padding-left: 5px;
	padding-top: 5px;
}

li {
	list-style: none;
}

.right ul {
	padding-top: 7px;
}

#footer {
	clear: left;
	width: 100%;
	height: 60px;
	bottom: 0;
	background-color: black;
	left: 0px;
	color: white;
	text-align: center;
	line-height: 60px;
}
</style>
</head>
<body>
	<img src="diblog_logo.jpg">
	<div id=header>
			<ul id="nav-list">
				<li>トップ</li>
				<li>プロフィール</li>
				<li>D.I.Blogについて</li>
				<li>登録フォーム</li>
				<li>問い合わせ</li>
				<li><a href='<s:url action="GoHomeAction"/>'>アカウント登録</a></li>
				<li>その他</li>
			</ul>
	</div>
	<div id=main>
		<div class="box">
			<div class="left">
				<div class="moji">プログラミングに役立つ書籍</div>
				<br> 2017年1月15日 <br> <img src="bookstore.jpg">
				<div class="teikyou">D.I.BlogはD.I.Works が提供する演習課題です。</div>
				<div class="kiji">記事中身</div>
				<div class="kijinakami">
					<div class="kijinakami_gazou">
						<img src="pic1.jpg">
						<p>ドメイン取得方法</p>
					</div>
					<div class="kijinakami_gazou">
						<img src="pic2.jpg">
						<p>快適な職場環境</p>
					</div>
					<div class="kijinakami_gazou">
						<img src="pic3.jpg">
						<p>Linuxの基礎</p>
					</div>
					<div class="kijinakami_gazou">
						<img src="pic4.jpg">
						<p>マーケティング入門</p>
					</div>
					<br>
					<div class="kijinakami_gazou">
						<img src="pic5.jpg">
						<p>アクティブラーニング</p>
					</div>
					<div class="kijinakami_gazou">
						<img src="pic6.jpg">
						<p>CSSの効率的な勉強方法</p>
					</div>
					<div class="kijinakami_gazou">
						<img src="pic7.jpg">
						<p>リーダブルコードとは</p>
					</div>
					<div class="kijinakami_gazou">
						<img src="pic8.jpg">
						<p>HTML5の可能性</p>
					</div>
				</div>
			</div>
			<div class="right">
				<h3>人気の記事</h3>
				<ul>
					<li>PHPオススメの本</li>
					<li>PHP MyAdminの使い方</li>
					<li>今人気のエディタTops</li>
					<li>HTMLの基礎</li>
				</ul>
				<h3>オススメリンク</h3>
				<ul>
					<li>ディーアイワークス株式会社</li>
					<li>XAMPPのダウンロード</li>
					<li>Eclipseのダウンロード</li>
					<li>Braketsのダウンロード</li>
				</ul>
				<h3>カテゴリ</h3>
				<ul>
					<li>HTML</li>
					<li>PHP</li>
					<li>MySQL</li>
					<li>JavaScript</li>
				</ul>
			</div>
		</div>
	</div>
	<div id=footer>
	Copyright D.I.works│D.I.blog is the one which
	provides A to Z about programming
	</div>
</body>
</html>