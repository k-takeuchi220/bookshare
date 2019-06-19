<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="ja">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/postConfirm.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


    <title>BookShare|　記事投稿確認ページ</title>

   <!--  form内でのonclickFunctionの定義 -->
    <script>
	// =======================post.jspからisbnの受け取り=======================

		$.getJSON('https://www.googleapis.com/books/v1/volumes?q=isbn:9784844336389', function(data) {
			$("#BookTitle").text(data.items[0].volumeInfo.title);
	          $("#BookAuthor").text(data.items[0].volumeInfo.authors[0]);
	          $("#PublishedDate").text(data.items[0].volumeInfo.publishedDate);
	          $("#BookDescription").text(data.items[0].volumeInfo.description);
	          $("#BookThumbnail").html('<img src=\"' + data.items[0].volumeInfo.imageLinks.smallThumbnail + '\" />');

		});

	/* 	$(function() {
			var isbn = document.getElementById('isbnCodeId').value;
			var url = "https://www.googleapis.com/books/v1/volumes?q=isbn:" + isbn;
			alert(url);
		      $.getJSON(url, function(data) {
		    	  alert("b");
		        if(!data.totalItems) {
		          $("#isbn").val("");
		          $("#BookTitle").text("");
		          $("#BookAuthor").text("");
		          $("#PublishedDate").text("");
		          $("#BookThumbnail").text("");
		          $("#BookDescription").text("");
		          $("#message").html('<p class="bg-warning" id="warning">該当する書籍がありません。</p>');
		          $('#message > p').fadeOut(3000);
		        } else {
		// 該当書籍が存在した場合、JSONをパースして入力項目のデータを取得する
		          $("#BookTitle").text(data.items[0].volumeInfo.title);
		          $("#BookAuthor").text(data.items[0].volumeInfo.authors[0]);
		          $("#PublishedDate").text(data.items[0].volumeInfo.publishedDate);
		          $("#BookDescription").text(data.items[0].volumeInfo.description);
		          $("#BookThumbnail").html('<img src=\"' + data.items[0].volumeInfo.imageLinks.smallThumbnail + '\" />');

		        }
		      });
		    }); */
	// =======================post.jspからisbnの受け取り ここまで=======================

	// =======================書籍データの検索=======================

	// フォームID [isbn] に入力があった場合、jQueryの関数 [change] を使ってISBNコードを取得
	// Google Books APIへ問い合わせを行う
	// もしGoogle Books APIに書籍が存在しない(totalItemsが0の場合)、入力欄に表示されたデータをすべて消去し、該当書籍がないとメッセージを表示する

	  /*   $("#isbn").change(function() {
	      const isbn = $("#isbn").val();
	      const url = "https://www.googleapis.com/books/v1/volumes?q=isbn:" + isbn;
	      $.getJSON(url, function(data) {
	        if(!data.totalItems) {
	          $("#isbn").val("");
	          $("#BookTitle").text("");
	          $("#BookAuthor").text("");
	          $("#PublishedDate").text("");
	          $("#BookThumbnail").text("");
	          $("#BookDescription").text("");
	          $("#message").html('<p class="bg-warning" id="warning">該当する書籍がありません。</p>');
	          $('#message > p').fadeOut(3000);
	        } else {
	// 該当書籍が存在した場合、JSONをパースして入力項目のデータを取得する
	          $("#BookTitle").text(data.items[0].volumeInfo.title);
	          $("#BookAuthor").text(data.items[0].volumeInfo.authors[0]);
	          $("#PublishedDate").text(data.items[0].volumeInfo.publishedDate);
	          $("#BookDescription").text(data.items[0].volumeInfo.description);
	          $("#BookThumbnail").html('<img src=\"' + data.items[0].volumeInfo.imageLinks.smallThumbnail + '\" />');
	        }
	      });
	    });
 */



	// =======================書籍データの検索ここまで=======================
    </script>

  </head>
  <body>
    <div id="main-wrapper">

      <!-- header -->
      <jsp:include page="header.jsp" />

		<s:hidden name="isbnCodeId" value="%{isbnCode}" escape="false" />

      <main>

        <div class="title-container text-center py-5" id="container-form">
          <h1><i class="fas fa-book px-3"></i>投稿記事確認ページ</h1>
          <h5>Post The Book That Changed Your Life</h5>
          <h4 class="mt-3">投稿する内容は以下でよろしいですか。</h4>
        </div>



        <div id="container-form">
          <s:form action="PostCreateCompleteAction" id="Form" method="post">
          	<table class="table table-striped container " >
              <tbody id="table-confirm">


              	<!-- 本のタイトル -->
                <tr>
                  <th class="table-confirm-title">本のタイトル:</th>
                  <td>
                  		<p id="BookTitle"></p>
                  		<s:iterator value="#session.bookTitle"><s:property /><br></s:iterator>
                  		<s:iterator value="session.bookTitle"><s:property /><br></s:iterator>

                  		<s:property value="bookTitle" escape="false" /><%-- <s:hidden name="bookName" value="bookName"/> --%>
                  </td>
                </tr>

<%--                 <!-- 本の著者 -->
                <tr>
                  <th class="table-confirm-title">著者:</th>
                  <td>
                  	<p id="BookAuthor"></p>
                  	<s:property value="bookAuthor" escape="false"/>
                  </td>
                </tr> --%>

<!--                 本の出版日
                <tr>
                  <th class="table-confirm-title my-5">出版日:</th>
                  <td>
                  	<p id="PublishedDate"></p>

                  </td>
                </tr> -->

                <!-- 本のサムネイル -->
                <tr>
                  <th class="table-confirm-title">本の画像:</th>
                  <td>
                  	<p id="BookThumbnail"></p>
                  	<s:property value="bookThumbnail" escape="false"/>
                  </td>
                </tr>

 <%--                <!-- 本の概要 -->
                <tr>
                  <th class="table-confirm-title">本の概要:</th>
                  <td>
                  	<p id="BookDescription"></p>
					<s:property value="bookDescription" escape="false"/>
                  </td>
                </tr> --%>

                <!-- 本の紹介文 -->
                <tr>
                  <th class="table-confirm-title">本の紹介文:</th>
                  <td>
					<s:property value="bookIntroduction" escape="false"/>
                  </td>
                </tr>

              </tbody>
            </table>
            <div id="wrapper-confirm-btn">

          </div>
          </s:form>
            <button type="button" class="btn btn-outline-secondary btn-lg confirm-btn" id="qqqq" onclick='location.href="postCreate.jsp"'>入力画面に戻る</button>
            <br>
            <s:submit type="button" class="btn btn-primary btn-lg confirm-btn" id="regist-btn" form="Form">投稿する</s:submit>
        </div>

      </main>

		<!--  footer  -->
      	<jsp:include page="footer.jsp" />
	</div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>