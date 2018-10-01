package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.UserPostListDAO;
import work.toook.dto.PostListDTO;

public class UserPostListAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private boolean loginFlg;
	private List<String> loginPostErrorMessageList = new ArrayList<String>();
	private List<PostListDTO> userPostDetailList = new ArrayList<PostListDTO>();




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


// 			Object型をint型に変換
 			String idStr = session.get("userId").toString();
 			int userId = Integer.parseInt(idStr);



// 			ポストリストデータをデータベースから取り出し受け取る

 			UserPostListDAO userPostListDAO = new UserPostListDAO();
// 			ログインユーザーの投稿記事を取得
 			userPostDetailList = userPostListDAO.returnPost(userId);
 			session.put("userPostDetailList",userPostDetailList);

 			PostListDTO postListDTO = new PostListDTO();
 			session.put("postId", postListDTO.getPostId());


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





	public List<PostListDTO> getUserPostDetailList() {
		return userPostDetailList;
	}





	public void setUserPostDetailList(List<PostListDTO> userPostDetailList) {
		this.userPostDetailList = userPostDetailList;
	}




}
