<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ja">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/postList.css">
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
            <p>人生を変えた本リスト。今までにない、本との出会いを。</p>
            <button type="button" class="btn btn-primary btn-lg" id="masthead-btn"><span id="btn-text">今すぐ投稿する</span></button>
            <p class="small">Find your best book that will help change your life.</p>
          </div>
        </div>

        <!--  postList-wrapper  -->

        <div class="container" id="postList-wrapper">
        	<div class="row border-top border-bottom border-dark mb-5 py-4" id="postContent-wrapper">
        		<div class="col-sm-4">
        			<img id="tempImage" class="img-thumbnail" src="./img/java.jpg">
        		</div>
        		<div class="col-sm-8">
        			<div class="my-3">
        				<h3>スッキリわかるJava入門 第2版 (スッキリシリーズ)</h3>
        				<h6>中山 清喬・国本 大悟(インプレイス出版社)</h6>
        			</div>
        			<div>
	        			<p class="mt-4">
	        				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
	        			</p>
        			</div>
        		</div>
        	</div>
        	<div class="row border-top border-bottom border-dark mb-5 py-4" id="postContent-wrapper">
        		<div class="col-sm-4">
        			<img id="tempImage" class="img-thumbnail" src="./img/java.jpg">
        		</div>
        		<div class="col-sm-8">
        			<div class="my-3">
        				<h3>スッキリわかるJava入門 第2版 (スッキリシリーズ)</h3>
        				<h6>中山 清喬・国本 大悟(インプレイス出版社)</h6>
        			</div>
        			<div>
	        			<p class="mt-4">
	        				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
	        			</p>
        			</div>
        		</div>
        	</div>
        	<div class="row border-top border-bottom border-dark mb-5 py-4" id="postContent-wrapper">
        		<div class="col-sm-4">
        			<img id="tempImage" class="img-thumbnail" src="./img/java.jpg">
        		</div>
        		<div class="col-sm-8">
        			<div class="my-3">
        				<h3>スッキリわかるJava入門 第2版 (スッキリシリーズ)</h3>
        				<h6>中山 清喬・国本 大悟(インプレイス出版社)</h6>
        			</div>
        			<div>
	        			<p class="mt-4">
	        				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
	        			</p>
        			</div>
        		</div>
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