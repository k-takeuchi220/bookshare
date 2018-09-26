package work.toook.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class HomeAction  extends ActionSupport implements SessionAware{
	private Map<String, Object> session;

	private boolean loginFlg;

	public String execute() {

//		LoginDTO loginDTO = new LoginDTO();
//		session.put("loginFlg",loginDTO.getLoginFlg());



  		return SUCCESS;
	}

	public boolean isLoginFlg() {
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}