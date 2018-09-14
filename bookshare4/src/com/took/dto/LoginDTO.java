package com.took.dto;

public class LoginDTO {

	private String userPassword;
	private String email;
//	private boolean loginFlg = false;

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

//	public boolean getLoginFlg() {
//		return loginFlg;
//	}
//
//	public void setLoginFlg(boolean loginFlg) {
//		this.loginFlg = loginFlg;
//	}

}
