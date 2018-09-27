package work.toook.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.LatestPostListDAO;
import work.toook.dto.PostListDTO;

public class HomeAction  extends ActionSupport implements SessionAware{
	private boolean loginFlg;
	private Map<String, Object> session;

	public String execute() {

		session.get("loginFlg");





		LatestPostListDAO latestPostListDAO = new LatestPostListDAO();
		PostListDTO postListDTO = latestPostListDAO.returnPost();
		session.put("LatestTitle",postListDTO.getTitle());
		session.put("LatestIntroduction", postListDTO.getIntroduction());
		session.put("LatestUserName", postListDTO.getUserName());
		session.put("LatestRegistDate", postListDTO.getRegistDate());








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