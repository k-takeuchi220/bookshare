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


    <title>BookShare|　アカウントの編集確認ページ</title>


    <script>


    </script>

  </head>
  <body>
    <div id="main-wrapper">

      <!-- header -->
      <jsp:include page="header.jsp" />
      <main>
        <div class="title-container text-center py-5" id="container-form">
          <h1><i class="fas fa-edit px-3"></i>アカウントの編集確認ページ</h1>
          <h4 class="mt-3">編集する内容は以下でよろしいですか。</h4>
        </div>
        <div id="container-form">
          <s:form action="">
          	<table class="table table-striped container" >
              <tbody id="table-confirm">

				<!-- ユーザー画像 -->
                <tr>
                  <th class="table-confirm-title">ユーザー画像:</th>
                  <td class="mx-5">
                  		<img src="userImage.png">
                  		<p id=""></p>
                  </td>
                </tr>

                <!-- ユーザー名 -->
                <tr>
                  <th class="table-confirm-title">ユーザー名:</th>
                  <td>
                  	<p id=""></p>
                  </td>
                </tr>

                <!-- メールアドレス -->
                <tr>
                  <th class="table-confirm-title">メールアドレス:</th>
                  <td>
                  	<p id=""></p>
                  </td>
                </tr>

                <!-- パスワード -->
                <tr>
                  <th class="table-confirm-title">パスワード:</th>
                  <td>
                  	<p id=""></p>
                  </td>
                </tr>

                <!-- 自己紹介 -->
                <tr>
                  <th class="table-confirm-title">自己紹介:</th>
                  <td>
                  	<p id=""></p>
                  </td>
                </tr>

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
            <s:submit type="button" class="btn btn-outline-secondary btn-lg confirm-btn" id="qqqq" method="back">入力画面に戻る</s:submit>
            <br>
            <s:submit type="button" class="btn btn-primary btn-lg confirm-btn" id="regist-btn">投稿する</s:submit>
          </div>
          </s:form>
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