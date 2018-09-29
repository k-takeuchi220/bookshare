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
    <link rel="stylesheet" type="text/css" href="./css/login.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">



    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <title>BookShare|　ログインページ</title>

    <!--  form内でのonclickFunctionの定義 -->
    <script>
	function goLoginAction() {
		document.getElementById("form").action="LoginAction";
	}
    </script>

  </head>
  <body>
    <div id="main-wrapper">
         <!-- header -->
      <jsp:include page="header.jsp" />
      <!-- container-form -->
      <main>
        <div id="container-form">
          <div class="wrapper-loginError">
            <h1 class="text-center">ログインできませんでした</h1>
            <div class="alert alert-danger" role="alert">
              <strong>ログイン認証に失敗しました</strong><br>
              メールアドレス，またはパスワードが違います．半角大文字・小文字を正しく入力してください<br>
              パスワードを忘れた場合は，<a href="#">新しいパスワードをリクエスト</a>
            </div>


          </div>
          <div class="text-center">
            <h3 class="mt-5">ログイン</h3>
            <p>メールアドレスまたはパスワードが違います。<span><a href="signin.jsp">無料会員登録はこちら</a></span></p>
          </div>

<!-- ==========================Twitterでログイン========================== -->

          <div class="twitter-box">
            <a href="" class="btn btn-block btn-social btn-twitter">
              <i class="fab fa-twitter" id="twitter-icon"></i>
              Twitterでログイン
            </a>
          </div>

<!-- ==========================Twitterでログインここまで========================== -->

          <div class="icon-box text-center" id="or">
            <p>or</p>
          </div>

<!-- ==========================ログイン========================== -->

          <s:form action="LoginAction" id="form">
            <div class="form-group">
              <label for="exampleInputEmail1">Eメールアドレス</label>
              <s:textfield name="email" value="%{#session.saveEmail}" type="email" class="form-control" id="exampleInputEmail1" placeholder="Eメールアドレス" autocomplete="off" />
              <small class="text-muted">あなたのメールは他の誰とも共有しません。</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">パスワード</label>
              <s:password name="userPassword" type="password" class="form-control" id="exampleInputPassword1" placeholder="パスワード" autocomplete="off" />
            </div>
            <div class="form-group form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">記憶する</label>
            </div>
            <s:submit value="再送信する" onclick="goLoginAction();" class="btn btn-primary submit-btn" />
          </s:form>

<!-- ==========================ログインここまで========================== -->
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