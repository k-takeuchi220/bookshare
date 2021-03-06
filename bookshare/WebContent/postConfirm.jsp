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
    <link rel="stylesheet" type="text/css" href="./css/postConfirm.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <title>BookShare|　記事投稿確認ページ</title>

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

      <div id="main">

        <div class="title-container text-center py-5" id="container-form">
          <h1><i class="fas fa-book px-3"></i>投稿記事確認ページ</h1>
          <h5>Post The Book That Changed Your Life</h5>
        </div>

        <div id="container-form">
          <s:form action="PostCompleteAction" id="Form" method="post">
          	<table class="table table-striped container " >
              <tbody id="table-confirm">
                <tr>
                  <th class="table-confirm-title">本のタイトル：</th>
                  <td>
                  	<s:property value="title" escape="false"/><s:hidden name="title"  value="%{title}"/>
                  </td>
                </tr>
                <tr>
                  <th class="table-confirm-title">ユーザー名：</th>
				  <td>
                 <%--  	 <s:property value="userName" escape="false"/><s:hidden name="userName"  value="%{userName}"/> --%>
					<s:iterator value="#session.userName"><s:property /><br></s:iterator>
                  	<%-- <s:property value="" escape="false"/><s:hidden name=""  value="%{}"/> --%>
                  </td>
                </tr>
                <tr>
                   <th class="table-confirm-title my-5">本の紹介文</th>
                <td>
                  <s:property value="introduction" escape="false"/><s:hidden name="introduction"  value="%{introduction}"/>
                </td>

                <tr>
                  <th class="table-confirm-title"> 本の画像：</th>
                  <td>
                  	<img src="./img/java.jpg">
                  	<%-- <s:property value="" escape="false"/><s:hidden name=""  value="%{}"/> --%>
                  </td>
                </tr>
              </tbody>
            </table>

          </s:form>
          <div id="wrapper-confirm-btn">
            <button type="button" class="btn btn-outline-secondary btn-lg confirm-btn" id="qqqq" onclick='location.href="post.jsp"'>入力画面に戻る</button>
            <br>
            <s:submit type="button" class="btn btn-primary btn-lg confirm-btn" id="regist-btn" form="Form">投稿する</s:submit>
          </div>

        </div>

      </div>>

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