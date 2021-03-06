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
    <link rel="stylesheet" type="text/css" href="./css/signinComplete.css">
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
      <main >
        <div  id="container-complete">
            <h1 class="text-center">会員登録完了ページ</h1>
            <h5>
            <s:property value="userName" escape="false"/>様
            <br>
            会員登録ありがとうございます．
            </h5>
            <p>
              ご登録メールアドレスへご確認のメールをお送りいたしました．<br>
              メールが届かない場合は，マイページでご登録メールアドレスが正しいかご確認ください．
            </p>

            <button type="button" onclick='location.href="myPage.jsp"' class="btn btn-outline-secondary btn-lg complete-btn">マイページ</button>
            <p>
              メールアドレスが受け取り可能なものにもかかわらずご確認メールが届かない場合は，下記お問い合わせ窓口までご連絡ください．
            </p>
            <button type="button" class="btn btn-outline-secondary btn-lg complete-btn" id="inquiry-btn" onclick='location.href="infomation.jsp"'>お問い合わせ</button>
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
    </div>
  </body>
</html>