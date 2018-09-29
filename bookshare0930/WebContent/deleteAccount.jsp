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
    <link rel="stylesheet" type="text/css" href="./css/deleteAccount.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <title>BookShare|　削除ページ</title>

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

			<main>
				<!-- 見出しタイトル -->
				<div id="titleContainer" class="text-center">
					<h1 class="my-5"><i class="fas fa-trash-alt"></i>アカウントの削除ページ</h1>
				</div>

				<!-- 削除ページ本文 -->
				<s:form method="post" action="DeleteAccountAction">
				<div id="desContainer">
					<h5 class="text-center mb-4">
					<s:iterator value="#session.userName"><s:property /></s:iterator>さん
					</h5>

					<p id="desText" class="text-center">
						アカウントを削除されるようですが、非常に残念です。<br>
						利用規約に関するご質問等がある場合は、<a href="#">ユーザーから質問があった問題に関する回答</a>をご覧ください。<br>
						しばらくアカウントの利用を停止したい場合は、<br>
						BookShare!アカウントの利用を一時的に停止することができます。
					</p>
				</div>


					<div class="form-group text-center my-5">
					    <label for="exampleSelect1exampleFormControlSelect1">アカウントを削除する理由</label>
					    <select class="form-control text-center" id="exampleFormControlSelect1">
					      <option>利用開始時に問題が発生した</option>
					      <option>プライバシーに関する心配</option>
					      <option>削除したいコンテンツがある</option>
					      <option>忙しい/気が散る</option>
					      <option>有益な情報が見つからない</option>
					      <option>その他</option>
					    </select>
					  </div>
				<div class="text-center">
					<s:submit id="deleteBtn" type="button" class="btn btn-danger">アカウントの削除</s:submit>
				</div>
				</s:form>




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

