package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.GetUserDetailDAO;
import work.toook.dao.LoginDAO;
import work.toook.dto.LoginDTO;


public class LoginAction extends ActionSupport implements SessionAware{
	private int id;
	private String userPassword;
	private String email;
	private String userName;
	private boolean loginFlg;
	private boolean checked;


	private List<String> loginErrorMessageList = new ArrayList<String>();




	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;

		session.put("userPassword", userPassword);
		session.put("email", email);
		session.put("checked", checked);
		
		

		loginErrorMessageList = LoginDAO.doLoginCheck(email,userPassword);

		if(loginErrorMessageList.size()==0){
			GetUserDetailDAO getUserName = new GetUserDetailDAO();
			LoginDTO loginDTO = getUserName.returnName(email,userPassword);
			session.put("userId", loginDTO.getUserId());
			session.put("email",loginDTO.getEmail());
			session.put("userPassword", loginDTO.getUserPassword());
			session.put("userName", loginDTO.getUserName());
			session.put("loginFlg", loginDTO.getLoginFlg());

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



	public boolean getLoginFlg() {
		return loginFlg;
	}


	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public List<String> getLoginErrorMessageList() {
		return loginErrorMessageList;
	}


	public void setLoginErrorMessageList(List<String> loginErrorMessageList) {
		this.loginErrorMessageList = loginErrorMessageList;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public boolean isChecked() {
		return checked;
	}


	public void setChecked(boolean checked) {
		this.checked = checked;
	}




}
