package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.util.InputCheckerProhibited;

public class PostConfirmAction extends ActionSupport implements SessionAware{
//  文字列データ受け取り

  	private String title;
  	private String introduction;
  	private String userName;
//  	private boolean loginFlg;

	private List<String> postErrorMessageList = new ArrayList<String>();
//	private Map<String, Object> userDetails =  new HashMap<String, Object>();
//	LoginDAO loginDao = new LoginDAO();


  	private Map<String, Object> session;

  	public String execute() {

  		String loginFlgStr = session.get("loginFlg").toString();
  		boolean loginFlg = Boolean.valueOf(loginFlgStr);


  		InputCheckerProhibited inputCheckerp = new InputCheckerProhibited();
  		postErrorMessageList = inputCheckerp.doProhibitedCharactersCheck(title,introduction);
  		String result = ERROR;

		if(loginFlg){


			session.get("userName");
			session.put("title", title);
			session.put("introduction", introduction);






  		if(postErrorMessageList.size()==0){
  			result = SUCCESS;


  		}else {
  			session.put("postErrorMessageList", postErrorMessageList);


  			result = ERROR;
  		}

		}
  		return result;
  	}











  		public Map<String, Object> getSession() {
  			return session;
  		}
  		public void setSession(Map<String, Object> session) {
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


		public List<String> getpostErrorMessageList() {
			return postErrorMessageList;
		}
		public void setpostErrorMessageList(List<String> postErrorMessageList) {
			this.postErrorMessageList = postErrorMessageList;
		}
		public List<String> getPostErrorMessageList() {
			return postErrorMessageList;
		}
		public void setPostErrorMessageList(List<String> postErrorMessageList) {
			this.postErrorMessageList = postErrorMessageList;
		}




		public String getUserName() {
			return userName;
		}




		public void setUserName(String userName) {
			this.userName = userName;
		}








}


