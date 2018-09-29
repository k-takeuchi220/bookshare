package work.toook.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.UserInfoDAO;
import work.toook.dto.UserInfoDTO;

public class SigninCompleteAction extends ActionSupport implements SessionAware{

	private String userName;
	private String userPassword;
	private String email;
	private Map<String, Object> session;
	public String execute() {
		String result = ERROR;

		UserInfoDAO userInfoDAO = new UserInfoDAO();


		int count = userInfoDAO.createUser(userName,userPassword,email);

//		GetUserDetailDAO getUserDetail = new GetUserDetailDAO();
		UserInfoDTO userInfoDTO = userInfoDAO.getUserInfo(email);
		session.put("userId", userInfoDTO.getUserId());

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
