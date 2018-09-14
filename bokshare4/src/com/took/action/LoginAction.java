package com.took.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.took.dao.LoginDAO;


public class LoginAction extends ActionSupport implements SessionAware{

	private String userPassword;
	private String email;
	public int loginFlg;

	private List<String> loginErrorMessageList = new ArrayList<String>();



	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;

		session.put("userPassword", userPassword);
		session.put("email", email);

		loginErrorMessageList = LoginDAO.doLoginCheck(email,userPassword);

		if(loginErrorMessageList.size()==0){

			result = SUCCESS;
		}else {
			session.put("loginErrorMessageList", loginErrorMessageList);

			result = ERROR;
		}
		return result;
		}


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


	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<String> getLoginErrorMessageList() {
		return loginErrorMessageList;
	}

	public void setLoginErrorMessageList(List<String> loginErrorMessageList) {
		this.loginErrorMessageList = loginErrorMessageList;
	}


}
