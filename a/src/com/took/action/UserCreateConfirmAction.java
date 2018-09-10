package com.took.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.took.util.InputChecker;


public class UserCreateConfirmAction extends ActionSupport implements SessionAware{

	private String userName;
	private String userPassword;
	private String userPassword2;
	private String email;

	private List<String> userNameErrorMessageList = new ArrayList<String>();
	private List<String> userPasswordErrorMessageList = new ArrayList<String>();
	private List<String> emailErrorMessageList = new ArrayList<String>();


	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;
		InputChecker inputChecker = new InputChecker();

		session.put("userName", userName);
		session.put("userPassword", userPassword);
		session.put("email", email);
																/*半角英字、漢字、ひらがな、半角数字、半角記号、カタカナ、全角記号*/
		userNameErrorMessageList = inputChecker.doCheck("名前", userName, 1, 16, true, true, true, false, false, true, false);
		userPasswordErrorMessageList = inputChecker.doCheck("パスワード", userPassword, 1, 16, true, false, false, true, false, false, false);
		userPasswordErrorMessageList = inputChecker.doCheck("パスワード(確認)", userPassword2, 1, 16, true, false, false, true, false, false, false);
		emailErrorMessageList = inputChecker.doCheck("メールアドレス", email, 1, 16, true, false, false, true, true, false, false);

		userPasswordErrorMessageList = inputChecker.doPasswordCheck(userPassword,userPassword2);
		/*if(!(userPassword.equals(userPassword2))){
			result = SUCCESS;
		}
		else */

		if(userNameErrorMessageList.size()==0
		&& userPasswordErrorMessageList.size()==0
		&& emailErrorMessageList.size()==0) {
			result = SUCCESS;

		}else {
			session.put("userNameErrorMessageList", userNameErrorMessageList);
			session.put("userPasswordErrorMessageList", userPasswordErrorMessageList);
			session.put("emailErrorMessageList", emailErrorMessageList);

			result = ERROR;
		}
		return result;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPassword2() {
		return userPassword2;
	}
	public void setUserPassword2(String userPassword2) {
		this.userPassword2 = userPassword2;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<String> getUserNameErrorMessageList() {
		return userNameErrorMessageList;
	}

	public void setUserNameErrorMessageList(List<String> userNameErrorMessageList) {
		this.userNameErrorMessageList = userNameErrorMessageList;
	}



	public List<String> getEmailErrorMessageList() {
		return emailErrorMessageList;
	}

	public void setEmailErrorMessageList(List<String> emailErrorMessageList) {
		this.emailErrorMessageList = emailErrorMessageList;
	}



	public List<String> getUserPasswordErrorMessageList() {
		return userPasswordErrorMessageList;
	}

	public void setUserPasswordErrorMessageList(List<String> userPasswordErrorMessageList) {
		this.userPasswordErrorMessageList = userPasswordErrorMessageList;
	}

}
