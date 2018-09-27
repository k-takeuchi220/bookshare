package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.ErrorPostListDAO;
import work.toook.dao.PostListDAO;
import work.toook.dto.PostListDTO;

public class PostCheckAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private boolean loginFlg;
	private List<String> loginPostErrorMessageList = new ArrayList<String>();
	private List<String> postListErrorMessageList1 = new ArrayList<String>();
	private List<String> postListErrorMessageList2 = new ArrayList<String>();
	private List<String> postListErrorMessageList3 = new ArrayList<String>();
	private List<String> postListErrorMessageList4 = new ArrayList<String>();
	private List<String> postListErrorMessageList5 = new ArrayList<String>();

	public String execute() {


//		LoginFlgDAO dao = new LoginFlgDAO();
//		PostListDTO PostListDTO = dao.returnFlg();

//		String loginFlgStr = session.get("loginFlg").toString();
//		String loginFlgStr = dao.toString();
// 		boolean loginFlg = Boolean.valueOf(loginFlgStr);
		ErrorPostListDAO errorPostListDAO = new ErrorPostListDAO();

		postListErrorMessageList1 = errorPostListDAO.getPostList(1);
		if(!(postListErrorMessageList1.size() == 0)) {
			session.put("postListErrorMessageList1",postListErrorMessageList1);
		}
		PostListDAO postListDAO1 = new PostListDAO();
		PostListDTO postListDTO1 = postListDAO1.returnPost(1);
		session.put("title1",postListDTO1.getTitle());
		session.put("introduction1", postListDTO1.getIntroduction());
		session.put("userName1", postListDTO1.getUserName());
		session.put("registdate1", postListDTO1.getRegistDate());



		postListErrorMessageList2 = errorPostListDAO.getPostList(2);
		if(!(postListErrorMessageList2.size() == 0)) {
			session.put("postListErrorMessageList2",postListErrorMessageList2);
		}
		PostListDAO postListDAO2 = new PostListDAO();
		PostListDTO postListDTO2 = postListDAO2.returnPost(2);
		session.put("title2",postListDTO2.getTitle());
		session.put("introduction2", postListDTO2.getIntroduction());
		session.put("userName2", postListDTO2.getUserName());
		session.put("registdate2", postListDTO2.getRegistDate());



		postListErrorMessageList3 = errorPostListDAO.getPostList(3);
		if(!(postListErrorMessageList3.size() == 0)) {
			session.put("postListErrorMessageList3",postListErrorMessageList3);
		}
		PostListDAO postListDAO3 = new PostListDAO();
		PostListDTO postListDTO3 = postListDAO3.returnPost(3);
		session.put("title3",postListDTO3.getTitle());
		session.put("introduction3", postListDTO3.getIntroduction());
		session.put("userName3", postListDTO3.getUserName());
		session.put("registdate3", postListDTO3.getRegistDate());



		postListErrorMessageList4 = errorPostListDAO.getPostList(4);
		if(!(postListErrorMessageList4.size() == 0)) {
			session.put("postListErrorMessageList4",postListErrorMessageList4);
		}
		PostListDAO postListDAO4 = new PostListDAO();
		PostListDTO postListDTO4 = postListDAO4.returnPost(4);
		session.put("title4",postListDTO4.getTitle());
		session.put("introduction4", postListDTO4.getIntroduction());
		session.put("userName4", postListDTO4.getUserName());
		session.put("registdate4", postListDTO4.getRegistDate());



		postListErrorMessageList5 = errorPostListDAO.getPostList(5);
		if(!(postListErrorMessageList5.size() == 0)) {
			session.put("postListErrorMessageList5",postListErrorMessageList5);
		}
		PostListDAO postListDAO5 = new PostListDAO();
		PostListDTO postListDTO5 = postListDAO5.returnPost(5);
		session.put("title5",postListDTO5.getTitle());
		session.put("introduction5", postListDTO5.getIntroduction());
		session.put("userName5", postListDTO5.getUserName());
		session.put("registdate5", postListDTO5.getRegistDate());



















 		if(loginFlg) {

 			return SUCCESS;
 		}else {

 			loginPostErrorMessageList.add("投稿を見るには会員登録が必要です。");
 			session.put("loginPostErrorMessageList", loginPostErrorMessageList);
// 			session.put("loginPostErrorMessageList", "投稿を見るには会員登録が必要です。");
 			return ERROR;
 		}



 		}



	public List<String> getPostListErrorMessageList1() {
		return postListErrorMessageList1;
	}



	public void setPostListErrorMessageList1(List<String> postListErrorMessageList1) {
		this.postListErrorMessageList1 = postListErrorMessageList1;
	}



	public List<String> getPostListErrorMessageList2() {
		return postListErrorMessageList2;
	}



	public void setPostListErrorMessageList2(List<String> postListErrorMessageList2) {
		this.postListErrorMessageList2 = postListErrorMessageList2;
	}



	public List<String> getPostListErrorMessageList3() {
		return postListErrorMessageList3;
	}



	public void setPostListErrorMessageList3(List<String> postListErrorMessageList3) {
		this.postListErrorMessageList3 = postListErrorMessageList3;
	}



	public List<String> getPostListErrorMessageList4() {
		return postListErrorMessageList4;
	}



	public void setPostListErrorMessageList4(List<String> postListErrorMessageList4) {
		this.postListErrorMessageList4 = postListErrorMessageList4;
	}



	public List<String> getPostListErrorMessageList5() {
		return postListErrorMessageList5;
	}



	public void setPostListErrorMessageList5(List<String> postListErrorMessageList5) {
		this.postListErrorMessageList5 = postListErrorMessageList5;
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
