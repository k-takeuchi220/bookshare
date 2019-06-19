package work.toook.action;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import work.toook.util.InputChecker;
import work.toook.util.InputCheckerProhibited;

public class PostConfirmAction extends ActionSupport implements SessionAware{
//  文字列データ受け取り

  	private String title;
  	private String introduction;
  	private String userName;

  	private File imageFile;
  	private String imageFileName;

	private List<String> postErrorMessageList = new ArrayList<String>();
	private List<String> imageFileErrorMessageList = new ArrayList<String>();



  	private Map<String, Object> session;

  	public String execute() throws SQLException{
  		String result = ERROR;
//  		画像の受け取り
  		if(!(imageFile == null)) {
//  			バイト表示（5MB）
  			long fileMaxSize = 5242880;
  			String filePath = ServletActionContext.getServletContext().getRealPath("/").concat("uploadImage");
  			System.out.println("Image Location:" + filePath);
  			File fileToCreate = new File(filePath,imageFileName);
//  			エラーメッセージ確認メソッド呼び出し、受け取りーーーーー
  			InputChecker inputChecker = new InputChecker();
  			imageFileErrorMessageList = inputChecker.doCheck("画像ファイル",imageFileName,1,50,true,true,true,true,true,true,true);
  			
			if(imageFile.length()>fileMaxSize) {
				imageFileErrorMessageList.add("5MBより大きい画像ファイルは挿入できません。");
				result = ERROR;
			}

  			try {
				FileUtils.copyFile(imageFile, fileToCreate);
				session.put("image_file_name", imageFileName);
				session.put("image_file_path", "./uploadImage");
				session.put("image_flg", imageFileName);
				System.out.println(session.get("image_file_name"));
				System.out.println(session.get("image_file_path"));


//			if(!(isImageFile(userImageContentType))) {
//				userImageFileNameErrorMessageListadd("");
//				result = ERROR;
//			}





  			}catch(IOException e){
  				e.printStackTrace();

  			}









  		}else {
//  		画像が入ってなかった時の処理
//  			noimageファイルを渡す


  		}




  		String loginFlgStr = session.get("loginFlg").toString();
  		boolean loginFlg = Boolean.valueOf(loginFlgStr);

  		InputCheckerProhibited inputCheckerp = new InputCheckerProhibited();
  		postErrorMessageList = inputCheckerp.doProhibitedCharactersCheck(title,introduction);

		if(loginFlg){

			
			session.get("userName");
			session.put("title", title);
			session.put("introduction", introduction);
			

		}


  		 result = ERROR;







  		if(postErrorMessageList.size()==0){
  			result = SUCCESS;


  		}else {
  			session.put("postErrorMessageList", postErrorMessageList);


  			result = ERROR;
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











		public File getImageFile() {
			return imageFile;
		}











		public void setImageFile(File imageFile) {
			this.imageFile = imageFile;
		}











		public String getImageFileName() {
			return imageFileName;
		}











		public void setImageFileName(String imageFileName) {
			this.imageFileName = imageFileName;
		}











		public List<String> getImageFileErrorMessageList() {
			return imageFileErrorMessageList;
		}











		public void setImageFileErrorMessageList(List<String> imageFileErrorMessageList) {
			this.imageFileErrorMessageList = imageFileErrorMessageList;
		}








}


