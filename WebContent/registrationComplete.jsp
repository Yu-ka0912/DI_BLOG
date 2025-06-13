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
<title>アカウント登録完了画面</title>
<style type="text/css">
#header {
	top: 156px;
	left: 0px;
	width: 100%;
	height: 60px;
	background-color: black;
	color:white;
	text-align: center;
	line-height: 60px;;
	font-weight: bold;
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
	position: fixed;
}
body {
	font-family: Verdana, Helvetica, sans-serif;
}
#main{
	margin-top:200px;
	text-align: center;
}
.back-top-button {
	margin-top:200px;
	background-color:#F5F5F5;
	padding: 6px 30px;

}

</style>
</head>
<body>
<div id="header">アカウント登録完了画面</div>
	<p>アカウント登録完了画面</p>
	<div id="main">
		<h3>ユーザーの登録が完了致しました。</h3>
		<input type="button" value="TOPページに戻る" class="back-top-button" onclick="location.href='HomeAction';" />
	</div>
<div id=footer>Copyright D.I.works│D.I.blog is the one which
		provides A to Z about programming</div>
</body>
</html>