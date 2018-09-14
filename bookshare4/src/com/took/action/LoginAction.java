package com.took.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.took.dao.LoginDAO;
import com.took.dao.UserInfoDAO;
import com.took.dto.LoginDTO;
import com.took.dto.UserInfoDTO;
import com.took.util.EmailDuplication;
import com.took.util.InputChecker;

public class LoginAction extends ActionSupport implements SessionAware {

	//JSPからメールアドレスを取得
	private String email;

	//JSPからパスワードを取得
	private String userPassword;

	//JSPからID保存の有無を取得
	private boolean savedEmail;

	//ユーザー情報取得用DAO
	private LoginDAO loginDAO = new LoginDAO();

	//ユーザー情報格納用DAO
	private LoginDTO loginDTO = new LoginDTO();

	//パスワード空欄時のエラーメッセージ
	private List<String> userPasswordErrorMessageList = new ArrayList<String>();

	//パスワード入力時の文字制限エラーメッセージ
	private List<String> userPasswordErrorMessageList2 = new ArrayList<String>();

	//メールアドレス空欄時のエラーメッセージ
	private List<String> emailErrorMessageList = new ArrayList<String>();

	//パスワード入力時の文字制限エラーメッセージ
	private List<String> emailErrorMessageList2 = new ArrayList<String>();

	//セッション
	private Map<String, Object> session;

	//==========================ログイン==========================
	public String execute() {

//		if(!(session.containsKey("loginFlg"))) {
//			return START;
//		}
			String result = ERROR;

			if(savedEmail==true) {
				session.put("savedEmail", true);
				session.put("email", email);
			}else {
				session.put("savedEmail", false);
				session.remove("email", email);
			}

			InputChecker inputChecker = new InputChecker();
			userPasswordErrorMessageList = inputChecker.doCheck("パスワード", userPassword, 1, 16, true, false, false, true, false, false, false);
			emailErrorMessageList = inputChecker.doCheck("メールアドレス", email, 8, 32, true, false, false, true, true, false, false);

//			userPasswordErrorMessageList2 = inputChecker.doPasswordCheck(userPassword);
			emailErrorMessageList2 = EmailDuplication.doEmailCheck(email);

			if(emailErrorMessageList.size()!=0
				&& userPasswordErrorMessageList.size()!=0
				&& emailErrorMessageList2.size()!=0
				&& userPasswordErrorMessageList.size()!=0) {
				session.put("userPasswordErrorMessageList", userPasswordErrorMessageList);
				session.put("userPasswordErrorMessageList2", userPasswordErrorMessageList2);
				session.put("emailErrorMessageList", emailErrorMessageList);
				session.put("emailErrorMessageList2", emailErrorMessageList2);
			}

//==========================DBと入力データの照合==========================

			UserInfoDAO userInfoDao = new UserInfoDAO();
			if(userInfoDao.isExistsUserInfo(email, userPassword)) {
				if(userInfoDao.login(email, userPassword) > 0) {
					UserInfoDTO userInfoDTO = userInfoDao.getUserInfo(email, userPassword);
					session.put("email", userInfoDTO.getEmail());

					result = SUCCESS;
				}
				session.put("logined", 1);
			}
			return result;
//==========================DBと入力データの照合ここまで==========================

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

	public boolean isSavedEmail() {
		return savedEmail;
	}

	public void setSavedEmail(boolean savedEmail) {
		this.savedEmail = savedEmail;
	}



	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
