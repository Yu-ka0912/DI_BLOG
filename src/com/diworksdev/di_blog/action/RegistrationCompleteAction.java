package com.diworksdev.di_blog.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.di_blog.dao.RegistrationCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class RegistrationCompleteAction extends ActionSupport implements SessionAware{
	private String last_name;
	private String first_name;
	private String last_name_kana;
	private String first_name_kana;
	private String email;
	private String password;
	private String gender;
	private String postal_code;
	private String prefecture;
	private String city;
	private String address;
	private String role;
	public Map<String,Object> session;
	private RegistrationCompleteDAO RegistrationCompleteDAO = new RegistrationCompleteDAO();

	public String execute() throws SQLException {
		RegistrationCompleteDAO.createUser(session.get("last_name").toString(),
				session.get("first_name").toString(),
				session.get("last_name_kana").toString(),
				session.get("first_name_kana").toString(),
				session.get("email").toString(),
				session.get("password").toString(),
				session.get("gender").toString(),
				session.get("postal_code").toString(),
				session.get("prefecture").toString(),
				session.get("city").toString(),
				session.get("address").toString(),
				session.get("role").toString());
		String result = SUCCESS;
		return result ;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name_kana() {
		return last_name_kana;
	}
	public void setLast_name_kana(String last_name_kana) {
		this.last_name_kana = last_name_kana;
	}
	public String getFirst_name_kana() {
		return first_name_kana;
	}
	public void setFirst_name_kana(String first_name_kana) {
		this.first_name_kana = first_name_kana;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

}
