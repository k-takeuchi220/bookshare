package work.toook.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.dao.DeletePostDAO;
import work.toook.dto.PostListDTO;

public class DeletePostAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private int deletePostId1;
	private int deletePostId2;
	private int deletePostId3;
	private int deletePostId4;
	private int deletePostId5;
	private List<PostListDTO> userPostDetailList = new ArrayList<PostListDTO>();



	int count1 = 0;
	int count2 = 0;
	int count3 = 0;
	int count4 = 0;
	int count5 = 0;


	public String execute(){


//		DeletePostDAO deletedao = new DeletePostDAO();
////			Object型をint型に変換
//			String idStr = session.get("userId").toString();
//			int userId = Integer.parseInt(idStr);
//
//			String deletePostIdStr = Integer.toString(deletePostId);
////			ー記号が入力されていた場合、複数記事削除を実行する
//		if(deletePostIdStr == "^(?=.*-).*$") {
//
//			String[] deletePostIdStrH = deletePostIdStr.split("-", 0);
////			String型配列をint型に変換
//			int[] deletePostIdH = Stream.of(deletePostIdStrH).mapToInt(Integer::parseInt).toArray();
//			for(int accessId : deletePostIdH) {
//
//
//				count = deletedao.returnDelete(accessId,userId);
//			}
//			}else {
////				単体削除
//
//				count = deletedao.returnDelete(deletePostId,userId);
//
//			}



	DeletePostDAO deletedao = new DeletePostDAO();
//	Object型をint型に変換
	String idStr = session.get("userId").toString();
	int userId = Integer.parseInt(idStr);
	count1 = deletedao.returnDelete(deletePostId1,userId);
	count2 = deletedao.returnDelete(deletePostId2,userId);
	count3 = deletedao.returnDelete(deletePostId3,userId);
	count4 = deletedao.returnDelete(deletePostId4,userId);
	count5 = deletedao.returnDelete(deletePostId5,userId);





//削除ページからボタン押した際に実行する


	if((count1+count2+count3+count4+count5) != 0 ) {

	return SUCCESS;
	}else {

	return ERROR;
	}






	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}






	public List<PostListDTO> getUserPostDetailList() {
		return userPostDetailList;
	}

	public void setUserPostDetailList(List<PostListDTO> userPostDetailList) {
		this.userPostDetailList = userPostDetailList;
	}

	public int getDeletePostId1() {
		return deletePostId1;
	}

	public void setDeletePostId1(int deletePostId1) {
		this.deletePostId1 = deletePostId1;
	}

	public int getDeletePostId2() {
		return deletePostId2;
	}

	public void setDeletePostId2(int deletePostId2) {
		this.deletePostId2 = deletePostId2;
	}

	public int getDeletePostId3() {
		return deletePostId3;
	}

	public void setDeletePostId3(int deletePostId3) {
		this.deletePostId3 = deletePostId3;
	}

	public int getDeletePostId4() {
		return deletePostId4;
	}

	public void setDeletePostId4(int deletePostId4) {
		this.deletePostId4 = deletePostId4;
	}

	public int getDeletePostId5() {
		return deletePostId5;
	}

	public void setDeletePostId5(int deletePostId5) {
		this.deletePostId5 = deletePostId5;
	}

	public int getCount1() {
		return count1;
	}

	public void setCount1(int count1) {
		this.count1 = count1;
	}

	public int getCount2() {
		return count2;
	}

	public void setCount2(int count2) {
		this.count2 = count2;
	}

	public int getCount3() {
		return count3;
	}

	public void setCount3(int count3) {
		this.count3 = count3;
	}

	public int getCount4() {
		return count4;
	}

	public void setCount4(int count4) {
		this.count4 = count4;
	}

	public int getCount5() {
		return count5;
	}

	public void setCount5(int count5) {
		this.count5 = count5;
	}










}
