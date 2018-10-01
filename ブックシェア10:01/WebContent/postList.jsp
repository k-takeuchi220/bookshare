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
        <s:if test="#session.postListNum == 1">
        <table>
		<tbody>
       <s:iterator value="#session.postDetailList1">

		<tr>


			<td><s:property value="title"/></td>
			<td><s:property value="introduction"/></td>
			<td><s:property value="userName"/></td>
			<td><s:property value="RegistDate"/></td>

		</tr>
		</s:iterator>
		</tbody>
		</table>
		</s:if>

		<s:elseif test="#session.postListNum == 2">
		<table>
		<tbody>
       <s:iterator value="#session.postDetailList2">

		<tr>
			<td><s:property value="title"/></td>
			<td><s:property value="introduction"/></td>
			<td><s:property value="userName"/></td>
			<td><s:property value="RegistDate"/></td>

		</tr>
		</s:iterator>
		</tbody>
		</table>
		</s:elseif>

		<s:else>
		<table>
		<tbody>
       <s:iterator value="#session.postDetailList3">

		<tr>

			<td><s:property value="title"/></td>
			<td><s:property value="introduction"/></td>
			<td><s:property value="userName"/></td>
			<td><s:property value="RegistDate"/></td>

		</tr>
		</s:iterator>
		</tbody>
		</table>
		</s:else>


      <!--  footer  -->
      <jsp:include page="footerNumber.jsp" />
      <jsp:include page="footer.jsp" />
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>