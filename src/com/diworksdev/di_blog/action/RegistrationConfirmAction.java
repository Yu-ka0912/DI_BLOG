package com.diworksdev.di_blog.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class RegistrationConfirmAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;

	private String family_name;
	private String last_name;
	private String family_name_kana;
	private String last_name_kana;
	private String mail;
	private String password;
	private String gender;
	private String postal_code;
	private String prefecture;
	private String address_1;
	private String address_2;
	private String authority;

	public String execute() {
		boolean hasError = false;
		if (isEmpty(family_name)) {
			addActionError("名前（姓）が未入力です。");
			hasError = true;
		}
		if (isEmpty(last_name)) {
			addActionError("名前（名）が未入力です。");
			hasError = true;
		}
		if (isEmpty(family_name_kana)) {
			addActionError("カナ（姓）が未入力です。");
			hasError = true;
		}
		if (isEmpty(last_name_kana)) {
			addActionError("カナ（名）が未入力です。");
			hasError = true;
		}
		if (isEmpty(mail)) {
			addActionError("メールアドレスが未入力です。");
			hasError = true;
		}
		if (isEmpty(password)) {
			addActionError("パスワードが未入力です。");
			hasError = true;
		}
		if (isEmpty(postal_code)) {
			addActionError("郵便番号が未入力です。");
			hasError = true;
		}
		if (isEmpty(address_1)) {
			addActionError("住所（市区町村）が未入力です。");
			hasError = true;
		}
		if (isEmpty(address_2)) {
			addActionError("住所（番地）が未入力です。");
			hasError = true;
		}
		if (hasError) {
			return ERROR;
		}

		session.put("family_name", family_name);
		session.put("last_name", last_name);
		session.put("family_name_kana", family_name_kana);
		session.put("last_name_kana", last_name_kana);
		session.put("mail", mail);
		session.put("password", password);
		session.put("gender", gender);
		session.put("postal_code", postal_code);
		session.put("prefecture", prefecture);
		session.put("address_1", address_1);
		session.put("address_2", address_2);
		session.put("authority", authority);


		return SUCCESS;
	}
	private boolean isEmpty(String value) {
		return value == null || value.trim().isEmpty();
	}

	public String getFamily_name() {
		return family_name;
	}

	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getFamily_name_kana() {
		return family_name_kana;
	}

	public void setFamily_name_kana(String family_name_kana) {
		this.family_name_kana = family_name_kana;
	}

	public String getLast_name_kana() {
		return last_name_kana;
	}

	public void setLast_name_kana(String last_name_kana) {
		this.last_name_kana = last_name_kana;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public String getPrefecture() {
		return prefecture;
	}

	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}

	public String getAddress_1() {
		return address_1;
	}

	public void setAddress_1(String address_1) {
		this.address_1 = address_1;
	}

	public String getAddress_2() {
		return address_2;
	}

	public void setAddress_2(String address_2) {
		this.address_2 = address_2;
	}

	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}

