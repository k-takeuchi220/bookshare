package com.took.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.took.dao.LoginDAO;
import com.took.dto.LoginDTO;
import com.took.util.InputChecker;


public class LoginAction extends ActionSupport implements SessionAware {

	public static final String START = "start";

//	public static final String NULLERROR = "nullerror";

//	public static final String MYPAGE = "mypage";

	//JSPからメールアドレスを取得
	private String email;

	//JSPからパスワードを取得
	private String userPassword;

	//JSPからID保存の有無を取得
	private boolean saveLogin;

//	＝＝＝＝＝＝＝＝＝＝エラーメッセージ＝＝＝＝＝＝＝＝＝＝

//	//パスワード空欄時のエラーメッセージ
//	private List<String> userPasswordErrorMessageList = new ArrayList<String>();
//
//	//パスワード入力時の文字制限エラーメッセージ
//	private List<String> userPasswordErrorMessageList2 = new ArrayList<String>();
//
//	//メールアドレス空欄時のエラーメッセージ
//	private List<String> emailErrorMessageList = new ArrayList<String>();
//
//	//パスワード入力時の文字制限エラーメッセージ
//	private List<String> emailErrorMessageList2 = new ArrayList<String>();


	//セッション
	private Map<String, Object> session;

	//ユーザー情報取得用DAO
	private LoginDAO loginDAO = new LoginDAO();

	//ユーザー情報格納用DAO
	private LoginDTO loginDTO = new LoginDTO();

	//エラーメッセージ
	private List<String> emailErrorMessageList = new ArrayList<String>();
	private List<String> userPasswordErrorMessageList = new ArrayList<String>();

	//==========================ログイン==========================
	public String execute() throws SQLException {

		String ret = ERROR;

		LoginDAO loginDao = new LoginDAO();
		LoginDTO loginDto = new LoginDTO();

		InputChecker inputChecker = new InputChecker();
		emailErrorMessageList = inputChecker.doCheck("メールアドレス", email, 1, 32, true, false, false, true, false,false, false);
		userPasswordErrorMessageList = inputChecker.doCheck("パスワード", userPassword, 1, 16, true, false, false, true, false, false, false);

		loginDto = loginDao.select(email, userPassword);
		if(email.equals(loginDto.getEmail())) {
			if(userPassword.equals(loginDto.getUserPassword())) {
				ret = SUCCESS;
			}
		}
		session.put("email", loginDto.getEmail());
		return ret;

//		//ログイン中かどうかの判定？
//		if(!(session.containsKey("loginFlg"))) {
//			return START;
//		}
//
//			String result = ERROR;
//
//			// sessionに格納
//			session.put("email", email);
//			session.put("userPassword", userPassword);
//
//			// Login時のemailを保存
//			if(saveLogin) {
//				session.put("saveEmail", email);
//			} else {
//				session.remove("saveEmail");
//			}
//
//			//==========================入力チェック==========================
//			//メールアドレスのチェック
//			if(email.equals("")) {
//				errorMessageList.add("メールアドレスを入力してください");
//			} else if (!loginDAO.existsEmail(email)) {
//				errorMessageList.add("メールアドレスが正しくありません");
//				result = ERROR;
//				return result;
//			}
//
//			//パスワードのチェック
//			if(userPassword.equals("")) {
//				errorMessageList.add("パスワードを入力してください");
//			}
//
//
////==========================DBと入力データの照合==========================
//
//			//メールアドレスとパスワードが入力されていれば
//			if(!email.equals("") && !userPassword.equals("")) {
//
//				//メールアドレスがDBに存在しなければ
//				if(!(loginDAO.existsEmail(email))) {
//
//				} else {
//
//					//ユーザー情報を取得し，LoginDTOに格納
//					loginDTO = loginDAO.getLoginUserInfo(email, userPassword);
//					session.put("id", loginDTO.getId());
//
//					//==========================ログイン判定==========================
//					//IDとパスワードが一致しなければ
//					if(!(email.equals(loginDTO.getEmail()) && userPassword.equals(loginDTO.getUserPassword()))) {
//						errorMessageList.add("パスワードが違います。");
//						result = ERROR;
//						return result;
//
//					} else {
//						result = SUCCESS;
//					}
//				}
//			}
//			return result;
	}
//==========================DBと入力データの照合ここまで==========================

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

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public boolean isSaveLogin() {
		return saveLogin;
	}

	public void setSaveLogin(boolean saveLogin) {
		this.saveLogin = saveLogin;
	}

	public LoginDAO getLoginDAO() {
		return loginDAO;
	}

	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}

	public void setLoginDTO(LoginDTO loginDTO) {
		this.loginDTO = loginDTO;
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

	public Map<String, Object> getSession() {
		return session;
	}


}
