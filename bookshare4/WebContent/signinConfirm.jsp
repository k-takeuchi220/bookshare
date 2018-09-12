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
    <link rel="stylesheet" type="text/css" href="./css/signinConfirm.css">
     <link rel="stylesheet" type="text/css" href="responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <title>BookShare|　会員登録ページ</title>

  </head>
  <body>
    <div id="main-wrapper">
      <!-- header -->
      <jsp:include page="header.jsp" />
      <!-- container-form -->
      <div id="main">
        <div  id="container-confirm">
          <s:form action="SigninCompleteAction" class="table-responsive" method="post">
            <h1 class="text-center">会員登録確認ページ</h1>
              <table class="table table-striped container " >
              <tbody id="table-confirm">
                <tr>
                  <th class="table-confirm-title">ユーザー名：</th>
                    <td><s:property value="userName" escape="false"/><s:hidden name="userName"  value="%{userName}"/></td>
                </tr>
                <tr>
                  <th class="table-confirm-title">パスワード：</th>
                  <td><s:property value="userPassword" escape="false"/><s:hidden name="userPassword"  value="%{userPassword}"/></td>
                </tr>
                <tr>
                  <th class="table-confirm-title"> Eメール ：</th>
                    <td><s:property value="email" escape="false"/><s:hidden name="email"  value="%{email}"/></td>
                </tr>

              </tbody>
            </table>
          <div id="wrapper-confirm-btn">
            <button type="button" class="btn btn-outline-secondary btn-lg confirm-btn" id="qqqq">戻る</button>
            <br>
            <button type="button" class="btn btn-primary btn-lg confirm-btn" id="regist-btn">会員登録</button>
            <br>
            <button type="button" class="btn btn-outline-secondary" id="btn-mypage">トップページへ</button>
          </div>
          </s:form>
          <p class="text-center mt-4">上記内容で登録を行いますが，よろしいですか．</p>






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