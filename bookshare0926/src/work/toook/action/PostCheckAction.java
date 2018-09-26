package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class PostCheckAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private boolean loginFlg;
	private List<String> loginPostErrorMessageList = new ArrayList<String>();

	public String execute() {

		
//		LoginFlgDAO dao = new LoginFlgDAO();
//		LoginDTO loginDTO = dao.returnFlg();

//		String loginFlgStr = session.get("loginFlg").toString();
//		String loginFlgStr = dao.toString();
// 		boolean loginFlg = Boolean.valueOf(loginFlgStr);


 		if(loginFlg) {

 			return SUCCESS;
 		}else {

 			loginPostErrorMessageList.add("投稿を見るには会員登録が必要です。");
 			session.put("loginPostErrorMessageList", loginPostErrorMessageList);
// 			session.put("loginPostErrorMessageList", "投稿を見るには会員登録が必要です。");
 			return ERROR;
 		}



 		}



	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public boolean isLoginFlg() {
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}


	public List<String> getLoginPostErrorMessageList() {
		return loginPostErrorMessageList;
	}
	public void setLoginPostErrorMessageList(List<String> loginPostErrorMessageList) {
		this.loginPostErrorMessageList = loginPostErrorMessageList;
	}




}
