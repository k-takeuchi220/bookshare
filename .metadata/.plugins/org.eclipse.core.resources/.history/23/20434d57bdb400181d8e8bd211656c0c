<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="ja">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href=".css/signin.css">
 	<link rel="stylesheet" type="text/css" href=".css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <title>BookShare|　会員登録ページ</title>

  </head>
  <body>

    <!-- header -->
    <header class="sticky-top">
      <div class="container">
        <nav class="navbar navbar-expand-sm nabvar-light">
          <a href="index.html" class="navbar-brand pr-5 text-white" id="logo">BookShare</a>
          <button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div id="menu" class="collapse navbar-collapse">
            <ul class="navbar-nav" id="nav-content">
              <li class="nav-item"><a href="" class="nav-link text-white">BookShareとは</a></li>
              <li class="nav-item"><a href="" class="nav-link text-white">投稿を見る</a></li>
              <li class="nav-item"><a href="signin.html" class="nav-link text-white">会員登録</a></li>
              <li class="nav-item"><a href="login.html" class="nav-link text-white">ログイン</a></li>
            </ul>
          </div>
        </nav>
      </div>
    </header>

  <div id="main">
    <div id="container-form">
      <div class="text-center">
        <h1>無料会員登録</h1>
        <p>BookShareの<a href="">利用規約</a>および<a href="">プライバシーポリシー</a>に同意の上、会員登録お願い致します。</p>
        <!-- <p>会員登録情報を入力してください。<span><a href="">  会員の方はこちら</a></span></p> -->
      </div>

      <a href="" class="btn btn-block btn-social btn-twitter">
        <i class="fab fa-twitter" id="twitter-icon"></i>
        Twitterで新規登録
      </a>

      <div class="icon-box text-center">
        <p>or</p>
      </div>

      <h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateCompleteAction">

			<tr id="box">
				<td>
					<label>名前:</label>
				</td>
				<td>
					<s:property value="userName" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>ログインPASS:</label>
				</td>
				<td>
					<s:property value="userPassword" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>メールアドレス:</label>
				</td>
				<td>
					<s:property value="email" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<s:submit value="完了"/>

				</td>
			</tr>






			</s:form>
			</table>


    </div>
  </div>

      <!-- footer -->
    <!-- <footer class="fixed-bottom"> -->
    <footer>
      <div class="container text-center">
        <div class="footer-title">

          <p>Copyright © 2018 BookShare Inc. All rights reserved.</p>
        </div>

      </div>

    </footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>