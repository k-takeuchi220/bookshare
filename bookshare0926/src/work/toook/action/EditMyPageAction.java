package work.toook.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class EditMyPageAction extends ActionSupport implements SessionAware {

//  ログイン情報の保持
//	private static final String START = "start";
	private String userId;
//	ログイン判定
//	private boolean saveLogin;
	private String reset;
	private Map<String, Object> session;

	public String execute() {

// 		ログイン判定
//		if(!(session.containsKey("loginFlg"))) {
//			return START;
//		}

		String result = SUCCESS;
		return result;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getReset() {
		return reset;
	}

	public void setReset(String reset) {
		this.reset = reset;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
