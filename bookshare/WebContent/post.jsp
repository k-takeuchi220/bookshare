<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
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

    <title>BookShare|　記事投稿ページ</title>

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
          <s:form action="PostConfirmAction" method="post" enctype="multipart/form-data">
    	<s:if test="!#session.postErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
			<s:iterator value="#session.postErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>

            <div class="form-group">
              <label for="exampleFormControlInput1">本のタイトル</label>
	<s:textfield class="form-control txt" id="exampleInputTitle" name="title" value="%{#session.title}" label="タイトル" placeholder="タイトル" >
	</s:textfield>
            </div>

            <div class="form-group">
              <label for="exampleFormControlTextarea1">本の紹介文</label>
              	<s:textarea class="form-control txt" id="exampleInputIntroduction" name="introduction" value="%{#session.introduction}" label="紹介文" placeholder="紹介文"  rows="5">
				</s:textarea>
			 </div>

            <div class="form-group">
    			<label for="File">本の画像</label><br>

    			<s:file  name="imageFile" label="File">
    			</s:file>


  			</div>





  			ISBNで投稿する方は<a href="postCreate.jsp">こちら</a>
  			<a href="https://ja.wikipedia.org/wiki/ISBN">（ ISBNとは ）</a>

  			<s:submit type="button" class="btn btn-primary btn-lg my-3" value="投稿する"></s:submit>

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