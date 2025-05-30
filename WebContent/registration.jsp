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
<title>アカウント登録画面</title>
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
}
</style>
</head>
	<div id="header">アカウント登録</div>
	<p>アカウント登録画面</p>
	<div id="main">
		<div>
			<s:if test="errorMessage != ''">
				<s:property value="errorMessage" escape="false" />
			</s:if>
			<table>
				<s:form action="RegistrationConfirmAction">
					<tr>
						<td><label>名前(姓)</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>名前(名)</label></td>
						<td><input type="text" name="loginPassword" value="" /></td>
					</tr>
					<tr>
						<td><label>カナ(姓)</label></td>
						<td><input type="text" name="userName" value="" /></td>
					</tr>
					<tr>
						<td><label>カナ(名)</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>メールアドレス</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>パスワード</label></td>
						<td><input type="password" name="password" value="" /></td>
					</tr>
					<tr>
						<td><label>性別</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>郵便番号</label></td>
						<td><input type="text" name="postal_code" pattern="\d{7}" maxlength="7" value="" /></td>
					</tr>
					<tr>
						<td><label>住所(都道府県)</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>住所(市区町村)</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>住所(番地)</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<tr>
						<td><label>アカウント権限</label></td>
						<td><input type="text" name="loginUserId" value="" /></td>
					</tr>
					<s:submit value="確認する" />
				</s:form>
			</table>
		</div>
	</div>


	<div id=footer>Copyright D.I.works│D.I.blog is the one which
		provides A to Z about programming</div>
</body>