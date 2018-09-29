package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.PostListDAO;
import work.toook.dto.PostListDTO;

public class PostListAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private boolean loginFlg;
	private List<String> loginPostErrorMessageList = new ArrayList<String>();
	private List<PostListDTO> postDetailList1 = new ArrayList<PostListDTO>();




	public String execute() {
//		LoginFlgDAO dao = new LoginFlgDAO();
		String loginFlgStr;
		if(session.get("loginFlg") == null) {
			loginFlgStr = "false";
		}else {
		loginFlgStr = session.get("loginFlg").toString();
		}
//		String loginFlgStr = dao.toString();
		boolean loginFlg = Boolean.valueOf(loginFlgStr);




//		ログイン済みかどうか判定
 		if(loginFlg) {



// 			現在のページをプット
// 			session.remove("postListNum");
 			session.put("postListNum", "1");



// 			ポストリストデータをデータベースから取り出し受け取る

 			PostListDAO postListDAO = new PostListDAO();
// 			最新10件の投稿を取得
 			postDetailList1 = postListDAO.returnPost();
 			session.put("postDetailList1",postDetailList1);


 			return SUCCESS;

 		}else {

 			loginPostErrorMessageList.add("投稿を見るには会員登録が必要です。");
 			session.put("loginPostErrorMessageList", loginPostErrorMessageList);
 			return ERROR;
 		}












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


	public List<String> getLoginPostErrorMessageList() {
		return loginPostErrorMessageList;
	}
	public void setLoginPostErrorMessageList(List<String> loginPostErrorMessageList) {
		this.loginPostErrorMessageList = loginPostErrorMessageList;
	}





	public List<PostListDTO> getPostDetailList1() {
		return postDetailList1;
	}





	public void setPostDetailList1(List<PostListDTO> postDetailList1) {
		this.postDetailList1 = postDetailList1;
	}




}
