<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ja">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <title>BookShare!!</title>
  </head>

  <body>
    <div id="main-wrapper">
        <!-- header -->
      <jsp:include page="header.jsp" />
      <main>
        <!--  top-wrapper  -->
        <div class="jumbotron text-center" id="masthead">
          <div class="wrapper">
            <h1>
              Book That Changed <br>
              Your Life
            </h1>
            <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
            <button type="button" class="btn btn-primary btn-lg" id="masthead-btn"><span id="btn-text">投稿を見る</span></button>
            <p class="small">Find your best book that will help change your life.</p>
          </div>
        </div>
        <!--  features-wrapper  -->
        <div class="features-wrapper mb-5">
          <div class="container">
            <div class="features-title my-5 text-center">
               <h2 id="title" class="my-3">BookShareとは</h2>
               <h4 class="conatainer-text" id="features-des">
                  Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
              </h4>
            </div>
            <div class="row text-center my-4">
              <div class="col-md-4">
                <i class="fas fa-book fa-6x my-5"></i>
                <h4>特徴</h4>
                <p class="my-4 conatainer-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                magna aliquam erat volutpat. </p>
              </div>

              <div class="col-md-4">
                <i class="fas fa-check fa-6x my-5"></i>
                <h4>ミッション</h4>
               <p class="my-4 conatainer-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                magna aliquam erat volutpat. </p>
              </div>

              <div class="col-md-4">
                <i class="fas fa-history fa-6x my-5"></i>
                <h4>設立経緯</h4>
                <p class="my-4 conatainer-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                magna aliquam erat volutpat. </p>
              </div>
            </div>
            <div class="text-center conatainer-text mb-5">
                <p>詳細につきましてはこちらの<span><a href="">ブログ</a></span>をご参照ください。</p>
            </div>
          </div>
        </div>
        <!--  contents-wrapper  -->
        <div class="contents-wrapper">
          <div class="container">
            <div class="contents-title text-center">
              <h2 id="title" class="my-3">投稿を見る</h2>
               <h4 class="conatainer-text" id="contents-des">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </h4>
                <h5>最新の投稿</h5>
                <iframe src="update.jsp" width="100%" height="250px" scrolling="no" marginwidth="0" marginheight="0" frameboder="0" style="border:none;"></iframe>
                <button type="button" class="btn btn-outline-dark btn-lg contents-btn" id="contents-btn"><span id="btn-text">投稿一覧へ</span></button>
            </div>
          </div>
        </div>
        <!--  signin-wrapper  -->
        <div class="signup-wrapper">
          <div class="container text-center">
            <div class="signin-title">
              <h2 id="title" class="mb-4">無料会員登録</h2>
              <h4 class="conatainer-text">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed diam nonummy
                nibh euismod tincidunt ut laoreet. </h4>
            </div>
            <button type="button" class="btn btn-outline-dark btn-lg" id="signin-btn" onclick="location.href='signin.jsp'"><span id="btn-text">無料会員登録へ</span></button>
          </div>
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