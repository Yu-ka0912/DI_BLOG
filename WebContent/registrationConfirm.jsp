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
<title>アカウント登録確認画面</title>
<style type="text/css">
body {
	font-family: Verdana, Helvetica, sans-serif;
}

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

#box td {
	padding-top: 7px;
	padding-bottom: 7px;
}

#main{
	margin-top: 40px;
}
table {
	text-align: center;
	margin: 0 auto;
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
.back-button {
	margin-right:50px;
	background-color:#F5F5F5;
	padding: 6px 30px;

}
.register-button {
	background-color:#F5F5F5;
	padding: 6px 30px;
	margin: 0;
}
.button2 {
	margin-top: 50px;
	display: flex;
	justify-content: center;
}
</style>
</head>
<body>
<div id="header">登録内容確認</div>
	<p>アカウント登録確認画面</p>
	<div id="main">
		<s:actionerror />
		<s:form action="RegistrationCompleteAction">
			<table>
				<tr id="box">
					<td>
						<label>名前(姓)</label>
					</td>
					<td>
						<s:property value="family_name"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>名前(名)</label>
					</td>
					<td>
						<s:property value="last_name"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>カナ(姓)</label>
					</td>
					<td>
						<s:property value="family_name_kana"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>カナ(名)</label>
					</td>
					<td>
						<s:property value="last_name_kana"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>メールアドレス</label>
					</td>
					<td>
						<s:property value="mail"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>パスワード</label>
					</td>
					<td>
						<%
						String password = (String) request.getAttribute("password");
						if (password != null) {
							int length = password.length();
							for (int i = 0; i < length; i++) {
								out.print("●");
							}
						}
						%>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>性別</label>
					</td>
					<td>
						<s:property value="gender"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>郵便番号</label>
					</td>
					<td>
						<s:property value="postal_code"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>住所(都道府県)</label>
					</td>
					<td>
						<s:property value="prefecture"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>住所(市区町村)</label>
					</td>
					<td>
						<s:property value="address_1"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>住所(番地)</label>
					</td>
					<td>
						<s:property value="address_2"/>
					</td>
				</tr>
				<tr id="box">
					<td>
						<label>アカウント権限</label>
					</td>
					<td>
						<s:property value="authority"/>
					</td>
				</tr>
			</table>
			<div class="button2">
				<input type="button" value="前に戻る" class="back-button" onclick="history.back();" />
				<s:submit value="登録する" class="register-button"/>
			</div>
		</s:form>
	</div>
	<div id=footer>Copyright D.I.works│D.I.blog is the one which
		provides A to Z about programming</div>
</body>
</html>
