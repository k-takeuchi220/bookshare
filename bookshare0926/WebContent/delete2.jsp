<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="ja">
<head>


	<title>Chapter 04-04 &#xB7; jQuery 最高の教科書</title>
	<link rel="stylesheet" href="./css/normalize.css">
	<link rel="stylesheet" href="./css/jquery.css">

	<script src="./js/vendor/jquery-1.10.2.min.js"></script>
	<script src="./js/vendor/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="./js/main.js"></script>
	</head>
	<body>


		<%-- <!-- header -->
		<jsp:include page="header.jsp" /> --%>

		<!-- サイドバー -->
		<div class="page-main" role="main">
		    <aside>
		        <ul>
		            <li><a href="#"><img src="img/01_aside.png"></a></li>
		            <li><a href="#"><img src="img/02_aside.png"></a></li>
		            <li><a href="#"><img src="img/03_aside.png"></a></li>
		        </ul>
		        <button><img src="img/btn_open.png"></button>
		    </aside>
		</div>

		<!--  footer  -->
      	<jsp:include page="footer.jsp" />


</body>
</html>
