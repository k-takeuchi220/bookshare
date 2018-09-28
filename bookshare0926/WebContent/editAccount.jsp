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

	    <title>BookShare|　プロフィール情報の編集ページ</title>
  	</head>
  	<body>
	<div id="main-wrapper">

		<!-- header -->
		<jsp:include page="header.jsp" />

		<!-- pageTitle -->
      	<div id="titleContainer" class="text-center mt-4">
			<h1 class="mt-5"><i class="fas fa-edit"></i>アカウント情報の編集ページ</h1>
		</div>

		<!-- pageContents -->
		<div>
			<!-- ユーザー情報の取得 -->
			<s:iterator value="" />

			<!-- プロフィール画像 -->
			<div class="row text-center my-5">
				<div class="col-4">
					プロフィール画像：
				</div>
				<div class="col-4">
					<img src="./img/userImage.png">
				</div>
				<div class="col-4">
					<s:form action="EditAccountAction">
						<button type="button" class="btn btn-warning badge-pill mx-3">編集</button>
					</s:form>
				</div>
			</div>

			<!-- ユーザー名 -->
			<div class="row text-center my-5">
				<div class="col-4">
					ユーザー名：
				</div>
				<div class="col-4">
					田中太郎
				</div>
				<div class="col-4">
					<s:form action="EditAccountAction">
						<button type="button" class="btn btn-warning badge-pill mx-3">編集</button>
					</s:form>
				</div>
			</div>

			<!-- メールアドレス -->
			<div class="row text-center my-5">
				<div class="col-4">
					メールアドレス：
				</div>
				<div class="col-4">
					java2018@gmail.com
				</div>
				<div class="col-4">
					<s:form action="EditAccountAction">
						<button type="button" class="btn btn-warning badge-pill mx-3">編集</button>
					</s:form>
				</div>
			</div>

			<!-- パスワード -->
			<div class="row text-center my-5">
				<div class="col-4">
					パスワード：
				</div>
				<div class="col-4">
					＊＊＊＊＊＊＊＊＊
				</div>
				<div class="col-4">
					<s:form action="EditAccountAction">
						<button type="button" class="btn btn-warning badge-pill mx-3">編集</button>
					</s:form>
				</div>
			</div>

			<!-- 自己紹介 -->
			<div class="row text-center my-5">
				<div class="col-4">
					自己紹介：
				</div>
				<div class="col-4">
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				</div>
				<div class="col-4">
					<s:form action="EditAccountAction">
						<button type="button" class="btn btn-warning badge-pill mx-3">編集</button>
					</s:form>
				</div>
			</div>

		</div>


        <%-- <div id="container-form">

        	<div id="errorMessage">
      			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false"/>
				</s:if>
			</div>
			<br>

			<s:form action="EditMyPageConfirmAction" method="post">
				<div class="vertical-list-table">

					<!-- プロフィール画像 -->
  					<div class="form-group">
    					<label for="File">プロフィール画像の選択</label>
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
    					<input type="file" class="form-control-file" id="File">
  					</div>

					<!-- 名前入力欄 -->
					<div class="form-group">
						ユーザー名： 田中太郎
						<s:property value="userName" />
						<s:form>
							<button type="button" class="btn btn-warning badge-pill ml-4 my-5">編集</button>
						</s:form>
					</div>

					<!-- パスワード入力欄 -->
					<div class="form-group">
						ユーザー名： 田中太郎
						<s:property value="userName" />
						<s:form>
							<button type="button" class="btn btn-warning badge-pill ml-4 my-5">編集</button>
						</s:form>
					</div>

					<!-- メールアドレス入力欄 -->
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
						<input type="text" name="email" placeholder="メールアドレス" class="form-control txt" id="exampleInputEmail">
					</div>

					<!-- 自己紹介入力欄 -->
					<div class="form-group">
						<label>自己紹介</label>
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
						<textarea type="text" name="selfIntro" placeholder="自己紹介" rows="10" class="form-control txt" id="exampleInputIntro"></textarea>
					</div>




				</div>
				<div class="submit_btn_box">
					<div id=".contents-btn-set">
						<s:submit value="プロフィール情報を編集" class="btn btn-primary my-4" />
					</div>
				</div>
			</s:form>
		</div>
 --%>
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