package work.toook.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.PostDAO;

public class PostCompleteAction extends ActionSupport implements SessionAware{

	private String title;
	private String introduction;
	private String userName;

	public Map<String,Object>session;


	public String execute() throws SQLException{
//		String result = ERROR;
		PostDAO postDAO = new PostDAO();
		postDAO.postPush(session.get("title").toString(),
		session.get("introduction").toString(),
		session.get("userName").toString());




		String result = SUCCESS;

		return result;
	}

	public void setSession(Map<String,Object>session){
		this.session = session;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getIntroduction() {
		return introduction;
	}


	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}




	public Map<String, Object> getSession() {
		return session;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}



}
