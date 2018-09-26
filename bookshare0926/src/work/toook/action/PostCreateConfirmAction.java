package work.toook.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class PostCreateConfirmAction extends ActionSupport implements SessionAware {

	private String isbnCode;
	private String bookTitle;
	private String bookAuthor;
	private String publishedDate;
	private String bookThumbnail;
	private String bookDescription;
	private String bookIntroduction;







	public Map<String, Object> session;

	public String execute() {

		String result = SUCCESS;
System.out.println(isbnCode);
		if(!(isbnCode.equals(""))
			&& !(bookIntroduction.equals(""))) {

			session.put("bookTitle", bookTitle);
			session.put("bookAuthor", bookAuthor);



		} else {
//			setErrorMessage("未入力の項目があります。");
			result = ERROR;
		}
		return result;
	}

	public String getIsbnCode() {
		return isbnCode;
	}

	public void setIsbnCode(String isbnCode) {
		this.isbnCode = isbnCode;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public String getPublishedDate() {
		return publishedDate;
	}

	public void setPublishedDate(String publishedDate) {
		this.publishedDate = publishedDate;
	}

	public String getBookThumbnail() {
		return bookThumbnail;
	}

	public void setBookThumbnail(String bookThumbnail) {
		this.bookThumbnail = bookThumbnail;
	}

//	public String getConfirmTitle() {
//		return confirmTitle;
//	}
//
//	public void setConfirmTitle(String confirmTitle) {
//		this.confirmTitle = confirmTitle;
//	}


//	public String getBookName() {
//		return bookName;
//	}
//
//	public void setBookName(String bookName) {
//		this.bookName = bookName;
//	}

//	public String getId() {
//		return id;
//	}
//
//	public void setId(String id) {
//		this.id = id;
//	}



	public String getBookDescription() {
		return bookDescription;
	}

	public void setBookDescription(String bookDescription) {
		this.bookDescription = bookDescription;
	}

	public String getBookIntroduction() {
		return bookIntroduction;
	}

	public void setBookIntroduction(String bookIntroduction) {
		this.bookIntroduction = bookIntroduction;
	}


//	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

//	public String getErrorMessage() {
//		return errorMessage;
//	}
//
//	public void setErrorMessage(String errorMessage) {
//		this.errorMessage = errorMessage;
//	}
}
