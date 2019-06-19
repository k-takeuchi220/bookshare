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
    <link rel="stylesheet" type="text/css" href="./css/myPage.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">


  </head>
	<body>
		<div id="main-wrapper">

			<!-- header -->
			<jsp:include page="header.jsp" />


			<div class="wrapper">

				<div id="userImage" class="text-center mt-4 py-2">
					<img src="userImage.png">
					<h3 class="my-4"><s:iterator value="#session.userName"><s:property /></s:iterator>さん</h3>
				</div>

				<div id="selfIntro">
					<p class="conatainer-text text-center" id="introText">
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
					</p>
				</div>

				<div id="btnContainer" class="text-center my-3">

					<div id="btnBox" class="mr-5 mt-4">
						<a href="#">
							<i id="toolBtn" class="fas fa-edit"></i>
							<button class="nav-link btn btn-outline-secondary" type="button" onclick='location.href="edit.jsp"'>編集</button>
						</a>
					</div>

					<div id="btnBox" class="mt-4">
						<a href="#">
							<i id="toolBtn" class="fas fa-trash-alt"></i>
							<button class="nav-link btn btn-outline-secondary" type="button" onclick='location.href="delete.jsp"'>削除</button>
						</a>
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