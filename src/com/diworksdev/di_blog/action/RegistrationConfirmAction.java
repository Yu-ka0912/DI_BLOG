package com.diworksdev.di_blog.action;

public class RegistrationConfirmAction extends ActionSupport{
	private String postal_code;


	@Override
	public void validate() {
		if (postal_code == null || !postal_code.matches("\\d{7}")) {
				addFieldError("postal_code", "郵便番号は7桁の半角数字で入力してください。");
		}
	@Override
	public String execute() {
		return SUCCESS;
	}
}
