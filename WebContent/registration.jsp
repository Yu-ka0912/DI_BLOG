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

<script>
	function validateJapaneseOnly(input) {
		const pattern = /^[\u3040-\u309F\u4E00-\u9FFF]+$/;
		if (!pattern.test(input.value)) {
			alert("名前はひらがなと漢字のみで入力してください。");
			input.value = '';
		}
	}
	function validateKatakanaOnly(input) {
		const pattern = /^[\u30A0-\u30FFー]+$/;
		if (!pattern.test(input.value)) {
			alert("カナは全角カタカナで入力してください。");
			input.value = '';
		}
	}
	function validatePostalCodeOnly(input) {
		const pattern = /^\d{7}$/;
		if (!pattern.test(input.value)) {
			alert("郵便番号は半角数字7桁で入力してください。");
			input.value = '';
		}
	}
	function validateAddressPart(input) {
		const pattern = /^[\u3040-\u309F\u4E00-\u9FFF\u30A0-\u30FF0-9\- 　]+$/;
		if (!pattern.test(input.value)) {
			alert("ひらがな・漢字・カタカナ・数字・ハイフン・スペースのみ使用できます。");
			input.value = '';
		}
	}
	function validateEmailSimple(input) {
		const pattern = /^[a-zA-Z0-9@\-\.]+$/;
		if (!pattern.test(input.value)) {
			alert("メールアドレスは半角英数字、@、-、.のみ使用できます。");
			input.value = '';
		}
	}
</script>
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
	position: fixed;
}
input {
	margin: 7px;
}
.submit-button {
	margin: 30px auto;
	margin-top: 50px;
	text-align: center;
	background-color:#F5F5F5;
	display: block;
	padding: 6px 30px;
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
						<td><input type="text" name="last_name" maxlength="10" value="" onblur="validateJapaneseOnly(this)" /></td>
					</tr>
					<tr>
						<td><label>名前(名)</label></td>
						<td><input type="text" name="first_name" maxlength="10" value="" onblur="validateJapaneseOnly(this)" /></td>
					</tr>
					<tr>
						<td><label>カナ(姓)</label></td>
						<td><input type="text" name="last_name_kana" maxlength="10" onblur="validateKatakanaOnly(this)" value="" /></td>
					</tr>
					<tr>
						<td><label>カナ(名)</label></td>
						<td><input type="text" name="first_name_kana" maxlength="10" onblur="validateKatakanaOnly(this)" value="" /></td>
					</tr>
					<tr>
						<td><label>メールアドレス</label></td>
						<td><input type="text" name="email" maxlength="100" onblur="validateEmailSimple(this)" value="" /></td>
					</tr>
					<tr>
						<td><label>パスワード</label></td>
						<td><input type="password" name="password" maxlength="10" value="" /></td>
					</tr>
					<tr>
						<td><label>性別</label></td>
						<td>
							<input type="radio" name="gender" value="male" checked/>男
							<input type="radio" name="gender" value="female"> 女
						</td>
					</tr>
					<tr>
						<td><label>郵便番号</label></td>
						<td>
							<input type="text" name="postal_code" maxlength="7" onblur="validatePostalCodeOnly(this)" value="" />
						</td>
					</tr>
					<tr>
						<td><label>住所(都道府県)</label></td>
						<td>
							<select name="prefecture">
								<option value="">-- 都道府県を選択 --</option>
								<option value="北海道">北海道</option>
								<option value="青森県">青森県</option>
								<option value="岩手県">岩手県</option>
								<option value="宮城県">宮城県</option>
								<option value="秋田県">秋田県</option>
								<option value="山形県">山形県</option>
								<option value="福島県">福島県</option>
								<option value="茨城県">茨城県</option>
								<option value="栃木県">栃木県</option>
								<option value="群馬県">群馬県</option>
								<option value="埼玉県">埼玉県</option>
								<option value="千葉県">千葉県</option>
								<option value="東京都">東京都</option>
								<option value="神奈川県">神奈川県</option>
								<option value="新潟県">新潟県</option>
								<option value="富山県">富山県</option>
								<option value="石川県">石川県</option>
								<option value="福井県">福井県</option>
								<option value="山梨県">山梨県</option>
								<option value="長野県">長野県</option>
								<option value="岐阜県">岐阜県</option>
								<option value="静岡県">静岡県</option>
								<option value="愛知県">愛知県</option>
								<option value="三重県">三重県</option>
								<option value="滋賀県">滋賀県</option>
								<option value="京都府">京都府</option>
								<option value="大阪府">大阪府</option>
								<option value="兵庫県">兵庫県</option>
								<option value="奈良県">奈良県</option>
								<option value="和歌山県">和歌山県</option>
								<option value="鳥取県">鳥取県</option>
								<option value="島根県">島根県</option>
								<option value="岡山県">岡山県</option>
								<option value="広島県">広島県</option>
								<option value="山口県">山口県</option>
								<option value="徳島県">徳島県</option>
								<option value="香川県">香川県</option>
								<option value="愛媛県">愛媛県</option>
								<option value="高知県">高知県</option>
								<option value="福岡県">福岡県</option>
								<option value="佐賀県">佐賀県</option>
								<option value="長崎県">長崎県</option>
								<option value="熊本県">熊本県</option>
								<option value="大分県">大分県</option>
								<option value="宮崎県">宮崎県</option>
								<option value="鹿児島県">鹿児島県</option>
								<option value="沖縄県">沖縄県</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><label>住所(市区町村)</label></td>
						<td><input type="text" name="city" maxlength="10" onblur="validateAddressPart(this)" value="" /></td>
					</tr>
					<tr>
						<td><label>住所(番地)</label></td>
						<td><input type="text" name="address" maxlength="10" onblur="validateAddressPart(this)" value="" /></td>
					</tr>
					<tr>
						<td><label>アカウント権限</label></td>
						<td>
							<select name="role">
								<option value="一般">一般</option>
								<option value="管理者">管理者</option>
							</select>
						</td>
					</tr>
					<s:submit value="確認する" cssClass="submit-button"/>
				</s:form>
			</table>
		</div>
	</div>


	<div id=footer>Copyright D.I.works│D.I.blog is the one which
		provides A to Z about programming</div>
</body>