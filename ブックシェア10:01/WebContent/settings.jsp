<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
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
<meta charset="UTF-8">
<title>設定</title>
</head>
<body>
<!-- header -->
<jsp:include page="header.jsp" />


<button class="nav-link btn btn-outline-secondary" type="button" onclick='location.href="edit.jsp"'>編集</button>
<button class="nav-link btn btn-outline-secondary" type="button" onclick='location.href="delete.jsp"'>削除</button>

<!-- footer -->
<jsp:include page="footer.jsp" />
</body>
</html>