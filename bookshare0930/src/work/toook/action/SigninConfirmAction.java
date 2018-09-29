package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.util.EmailDuplication;
import work.toook.util.InputChecker;


public class SigninConfirmAction extends ActionSupport implements SessionAware{

	private String userName;
	private String userPassword;
	private String userPassword2;
	private String email;

	private List<String> userNameErrorMessageList = new ArrayList<String>();
	private List<String> userPasswordErrorMessageList = new ArrayList<String>();
	private List<String> userPasswordErrorMessageList2 = new ArrayList<String>();
	private List<String> emailErrorMessageList = new ArrayList<String>();
	private List<String> emailErrorMessageList2 = new ArrayList<String>();



	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;
		InputChecker inputChecker = new InputChecker();

		session.put("userName", userName);
		session.put("userPassword", userPassword);
		session.put("email", email);
		
		
																	//	最小文字数、最大文字数、半角英語、漢字、ひらがな、半角数字、半角記号、カタカナ、全角記号
		userNameErrorMessageList = inputChecker.doCheck("名前", userName, 1, 16, true, true, true, false, false, true, false);
		userPasswordErrorMessageList = inputChecker.doCheck("パスワード", userPassword, 1, 16, true, false, false, true, false, false, false);
		userPasswordErrorMessageList = inputChecker.doCheck("パスワード", userPassword2, 1, 16, true, false, false, true, false, false, false);
		emailErrorMessageList = inputChecker.doCheck("メールアドレス", email, 8, 32, true, false, false, true, true, false, false);

		userPasswordErrorMessageList2 = inputChecker.doPasswordCheck(userPassword, userPassword2);

		emailErrorMessageList2 = EmailDuplication.doEmailCheck(email);


		if(userNameErrorMessageList.size()==0
		&& userPasswordErrorMessageList.size()==0
		&& userPasswordErrorMessageList2.size()==0
		&& emailErrorMessageList.size()==0
		&& emailErrorMessageList2.size()==0){
			session.put("loginFlg", true);
			result = SUCCESS;
		}else {
			session.put("userNameErrorMessageList", userNameErrorMessageList);
			session.put("userPasswordErrorMessageList", userPasswordErrorMessageList);
			session.put("userPasswordErrorMessageList2", userPasswordErrorMessageList2);
			session.put("emailErrorMessageList", emailErrorMessageList);
			session.put("emailErrorMessageList2", emailErrorMessageList2);

			result = ERROR;
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
	public String getUserPassword2() {
		return userPassword2;
	}
	public void setUserPassword2(String userPassword2) {
		this.userPassword2 = userPassword2;
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

	public List<String> getUserNameErrorMessageList() {
		return userNameErrorMessageList;
	}

	public void setUserNameErrorMessageList(List<String> userNameErrorMessageList) {
		this.userNameErrorMessageList = userNameErrorMessageList;
	}



	public List<String> getEmailErrorMessageList() {
		return emailErrorMessageList;
	}

	public void setEmailErrorMessageList(List<String> emailErrorMessageList) {
		this.emailErrorMessageList = emailErrorMessageList;
	}



	public List<String> getUserPasswordErrorMessageList() {
		return userPasswordErrorMessageList;
	}

	public void setUserPasswordErrorMessageList(List<String> userPasswordErrorMessageList) {
		this.userPasswordErrorMessageList = userPasswordErrorMessageList;
	}
	public List<String> getUserPasswordErrorMessageList2() {
		return userPasswordErrorMessageList2;
	}

	public void setUserPasswordErrorMessageList2(List<String> userPasswordErrorMessageList2) {
		this.userPasswordErrorMessageList2 = userPasswordErrorMessageList2;
	}

	public List<String> getEmailErrorMessageList2() {
		return emailErrorMessageList2;
	}

	public void setEmailErrorMessageList2(List<String> emailErrorMessageList2) {
		this.emailErrorMessageList2 = emailErrorMessageList2;
	}


}
