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
    <link rel="stylesheet" type="text/css" href="./css/signin.css">
     <link rel="stylesheet" type="text/css" href="responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
 <!-- catpcha認証 -->
<%--     <script src='https://www.google.com/recaptcha/api.js'></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script> --%>


    <title>BookShare|　会員登録ページ</title>

  </head>
  <body>
    <div id="main-wrapper">
      <!-- header -->
      <jsp:include page="header.jsp" />
      <!-- container-form -->
      <div id="main">
        <div id="container-form">
          <div class="text-center">
            <h1>無料会員登録</h1>

             <p>BookShareの<a href="#" onclick="window.open('termsOfService.jsp', '', 'width=50%,height=80%,resizable=yes,scrollbars=yes,color=blue'); return false;">利用規約</a>
            および<a onclick="window.open('privacyPolicy.jsp', '', 'width=50%,height=80%,resizable=yes,scrollbars=yes'); return false;">プライバシーポリシー</a>に同意の上、会員登録お願い致します。</p>

            <!-- <p>会員登録情報を入力してください。<span><a href="">  会員の方はこちら</a></span></p> -->
          </div>
          <div class="twitter-box">
            <a href="" class="btn btn-block btn-social btn-twitter">
              <i class="fab fa-twitter" id="twitter-icon"></i>
              Twitterで新規登録
            </a>
          </div>
            <div id="errorMessage">
      <s:if test="errorMessage !=''">
			<s:property value="errorMessage" escape="false"/>
		</s:if>
		</div>
		<br>






<s:form action="SigninConfirmAction" method="post">

<div class="vertical-list-table">

<div class="form-group">
	<label for="exampleInputUserName">名前</label>
	<s:if test="!#session.userNameErrorMessageList.isEmpty()">
		<div class="error">
		<div class="error-message">
		<s:iterator value="#session.userNameErrorMessageList"><s:property /><br></s:iterator>
		</div>
		</div>
	</s:if>
	<s:textfield class="form-control txt" id="exampleInputUserName" name="userName" value="%{#session.userName}" label="名前" placeholder="名前" >
	</s:textfield>
</div>

<div class="form-group">
	<label for="exampleInputUserPassword">パスワード</label>
	<s:if test="!#session.userPasswordErrorMessageList.isEmpty()">
		<div class="error">
		<div class="error-message">
		<s:iterator value="#session.userPasswordErrorMessageList"><s:property /><br></s:iterator>
		</div>
		</div>
	</s:if>
	<s:if test="!#session.userPasswordErrorMessageList2.isEmpty()">
		<div class="error">
		<div class="error-message">
		<s:iterator value="#session.userPasswordErrorMessageList2"><s:property /><br></s:iterator>
		</div>
		</div>
	</s:if>
	<s:password class="form-control txt" id="exampleInputUserPassword"  name="userPassword"  value="" label="パスワード" placeholder="パスワード" setSecureTextEntry="Yes" oncory="return false" onpaste="retrurn false" oncontextmenu="return false" ></s:password>

	<s:password class="form-control txt" id="exampleInputUserPassword2"  name="userPassword2"  value="" label="パスワード(確認)" placeholder="パスワード(確認)" setSecureTextEntry="Yes" oncory="return false" onpaste="retrurn false" oncontextmenu="return false" ></s:password>

</div>
<div class="form-group">
	<label for="exampleInputEmail">メールアドレス</label>
	<s:if test="!session.emailErrorMessageList.isEmpty()">
		<div class="error">
		<div class="error-message">
		<s:iterator value="#session.emailErrorMessageList"><s:property /><br></s:iterator>
		</div>
		</div>
	</s:if>
	<s:if test="!session.emailErrorMessageList2.isEmpty()">
		<div class="error">
		<div class="error-message">
		<s:iterator value="#session.emailErrorMessageList2"><s:property /><br></s:iterator>
		</div>
		</div>
	</s:if>
	<s:textfield class="form-control txt" id="exampleInputEmail" name="email" value="%{#session.email}" label="メールアドレス" placeholder="メールアドレス" type="email" >
	</s:textfield>
</div>

</div>

<!-- catpcha認証 -->
<!-- <div class="g-recaptcha" data-callback="clearcall" data-sitekey="6Lcly28UAAAAAP-3AzOjIKLc2ALwUgvdcl20D7UA"></div> -->

<div class="submit_btn_box">
<div id=".contents-btn-set">
<s:submit value="登録" class="submit_btn" />
</div>
</div>
</s:form>
        </div>
      </div>
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