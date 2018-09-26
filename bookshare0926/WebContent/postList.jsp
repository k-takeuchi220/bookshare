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

      <div id="main">

        <!--  top-wrapper  -->
        <div class="jumbotron text-center" id="masthead">
          <div class="wrapper">
            <h1>
              Book That Changed <br>
              Your Life
            </h1>
            <p>人生を変えた本リスト。今までにない、本との出会いを。</p>
            <s:form method="get">
            <button type="button" class="btn btn-primary btn-lg" id="masthead-btn" onclick='location.href="post.jsp"'><span id="btn-text" >今すぐ投稿する</span></button>
            </s:form>
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
        			<s:if test="!postListErrorMessageList1.isEmpty()">
        				<s:iterator value="#session.postListErrorMessageList1"><s:property /><br></s:iterator>
        			</s:if>

        			<s:iterator value="#session.title1"><s:property /><br></s:iterator>
        			</div>
        			<div>
	        			<p class="mt-4">
	        			<s:iterator value="#session.introduction1"><s:property /><br></s:iterator>
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
        			<s:if test="!postListErrorMessageList2.isEmpty()">
        				<s:iterator value="#session.postListErrorMessageList2"><s:property /><br></s:iterator>
        			</s:if>

        			<s:iterator value="#session.title2"><s:property /><br></s:iterator>
        			</div>
        			<div>
	        			<p class="mt-4">
	        			<s:iterator value="#session.introduction2"><s:property /><br></s:iterator>
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
        			<s:if test="!postListErrorMessageList3.isEmpty()">
        				<s:iterator value="#session.postListErrorMessageList3"><s:property /><br></s:iterator>
        			</s:if>

        			<s:iterator value="#session.title3"><s:property /><br></s:iterator>
        			</div>
        			<div>
	        			<p class="mt-4">
	        			<s:iterator value="#session.introduction3"><s:property /><br></s:iterator>
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
        			<s:if test="!postListErrorMessageList4.isEmpty()">
        				<s:iterator value="#session.postListErrorMessageList4"><s:property /><br></s:iterator>
        			</s:if>

        			<s:iterator value="#session.title4"><s:property /><br></s:iterator>
        			</div>
        			<div>
	        			<p class="mt-4">
	        			<s:iterator value="#session.introduction4"><s:property /><br></s:iterator>
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
        			<s:if test="!postListErrorMessageList5.isEmpty()">
        				<s:iterator value="#session.postListErrorMessageList5"><s:property /><br></s:iterator>
        			</s:if>

        			<s:iterator value="#session.title5"><s:property /><br></s:iterator>
        			</div>
        			<div>
	        			<p class="mt-4">
	        			<s:iterator value="#session.introduction5"><s:property /><br></s:iterator>
	        			</p>
        			</div>
        		</div>
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