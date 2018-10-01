package work.toook.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction  extends ActionSupport implements SessionAware{

	private Map<String, Object> session;
	private String email;
	private String userPassword;


	public String execute() {

		String checkedStr = session.get("checked").toString();
		boolean checked = Boolean.valueOf(checkedStr);

		if(checked == true) {

			email = session.get("email").toString();
			userPassword = session.get("userPassword").toString();
		}

		session.clear();

		session.put("checked", checked);
		if(!(email == null && userPassword == null)) {
			session.put("email", email);
			session.put("userPassword", userPassword);

		}



  		return SUCCESS;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}




}