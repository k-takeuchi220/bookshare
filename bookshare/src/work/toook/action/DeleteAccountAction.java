package work.toook.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.DeleteAccountDAO;

public class DeleteAccountAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
//	private List<String> DeleteMessageList = new ArrayList<String>();

	int count = 0;

	public String execute(){

//	Object型をint型に変換
	String idStr = session.get("userId").toString();
	int userId = Integer.parseInt(idStr);

//削除ページからボタン押した際に実行する
	DeleteAccountDAO deletedao = new DeleteAccountDAO();

	count = deletedao.returnDelete(userId);
	if(count != 0) {
	session.clear();
	return SUCCESS;
	}else {
//	session.put("DeleteMessageList", DeleteMessageList);
	return ERROR;
	}






	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}





	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}






}
