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
    <link rel="stylesheet" type="text/css" href="./css/post.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <title>BookShare|　記事投稿ページ</title>

    <script>
       $(function() {
// =======================書籍データの検索=======================

// フォームID [isbn] に入力があった場合、jQueryの関数 [change] を使ってISBNコードを取得
// Google Books APIへ問い合わせを行う
// もしGoogle Books APIに書籍が存在しない(totalItemsが0の場合)、入力欄に表示されたデータをすべて消去し、該当書籍がないとメッセージを表示する
    $("#isbn").change(function() {
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

  });
// =======================書籍データの検索ここまで=======================

/* function onButtonClick() {
		alert("a");
		target = document.getElementById("nextTitle");
		target.innerText = document.forms.form.BookTitle.value;
		hoge = target.innerText;
		alert(hoge);
	} */



// ======================= submit()ここから =======================

/*
	$(function() {
		document.myform.btn.addEventListener('click', function() {
			alert("submit呼出せてる");
			var bookName = document.getElementById('BookTitle').innerHTML;
			alert(bookName);
			/* document.getElementsByName('bookName').value = bookName;
			var confirmTitle = document.getElementsByName('bookName').value;
			alert(confirmTitle); */
		/* document.myform.submit();
		});
	}); */

// ======================= submit()ここまで =======================

// ======================= isbnここから =======================

	/* $(function() {
		document.myform.btn.addEventListener('click', function() {

			var isbmId = document.getElementById('isbn')


		document.myform.submit();
		});
	}); */

// ======================= isbnここまで =======================

    </script>

  </head>


  <body>
    <div id="main-wrapper">

      <!-- header -->
      <jsp:include page="header.jsp" />


      <main>
        <div class="title-container text-center py-5" id="container-form">
          <h1><i class="fas fa-book px-3"></i>あなたの人生を変えた本を投稿する</h1>
          <h5>Post The Book That Changed Your Life</h5>
        </div>

        <div id="container-form">
          <s:form action="PostCreateConfirmAction" name="myform" method="post">

            <!-- ISBNの入力タグ -->
            <div class="form-group">
              <h6 class="isbn">ISBN番号を入力してください:</h6>
              <input type="text" class="form-control" id="isbn" name="isbnCode" placeholder="ISBN番号を入力"><!-- <s:hidden name="isbnCode" value="%{isbnCode}" /> -->

            </div>

            <table class="table table-striped container">
              <tbody>

                <!-- 本のタイトル -->
                <tr>
                  <th class="table-confirm-title">本のタイトル:</th>
                  <td>
                  	<p id="BookTitle"></p>
                  	<s:hidden name="BookTitle" value= />

                  </td>
                </tr>
<%--             <!-- 本の著者 -->
                <tr>
                  <th class="table-confirm-title">著者:</th>
                  <td>
                    <p id="BookAuthor" name="bookAuthor"></p><s:hidden name="bookAuthor" value="%{bookAuthor}"/>
                  </td>
                </tr> --%>
<!--                 本の出版日
                <tr>
                  <th class="table-confirm-title">出版日:</th>
                  <td>
                    <p id="PublishedDate" type="text" name="publishedDate"></p>
                  </td>
                </tr> -->
                <!-- 本のサムネイル -->
                <tr>
                  <th class="table-confirm-title">本の画像:</th>
                  <td>
                    <p id="BookThumbnail"></p>
                  </td>
                </tr>
<!--                 本の概要
                <tr>
                  <th class="table-confirm-title">本の概要:</th>
                  <td>
                    <p id="BookDescription" type="text" name="bookDescription"></p>
                  </td>
                </tr> -->
              </tbody>
            </table>

            <div class="form-group my-4">
              <label for="exampleFormControlTextarea1">本の紹介文</label>
              <textarea name="bookIntroduction" class="form-control" id="exampleFormControlTextarea1" rows="7" placeholder="本の紹介文を入力"></textarea>
            </div>

			<s:submit value="投稿する" type="button" name="btn" class="btn btn-primary btn-lg my-3 mb-5" />

          </s:form>
        </div>

      </main>

		<!--  footer  -->
      	<jsp:include page="footer.jsp" />
	</div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

  </body>
</html>