package com.took.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.took.dao.UserInfoDAO;

public class LogoutAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	public String execute() {
		String result = ERROR;
		UserInfoDAO userInfoDao = new UserInfoDAO();
		String email = String.valueOf(session.get("email"));
		boolean savedEmail = Boolean.valueOf(String.valueOf(session.get("savedEmail")));
		int count = userInfoDao.logout(email);
		if(count > 0) {
			session.clear();
			session.put("savedEmail", savedEmail);
			session.put("email", email);
			result = SUCCESS;
		}
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
