package com.took.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.took.dao.UserInfoDAO;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{

	private String userName;
	private String userPassword;
	private String email;
	private Map<String, Object> session;
	public String execute() {
		String result = ERROR;
		UserInfoDAO UserInfoDao = new UserInfoDAO();
		int count = UserInfoDao.createUser(userName,userPassword,email);
		if(count > 0) {
			result = SUCCESS;
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

}
