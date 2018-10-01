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
    <link rel="stylesheet" type="text/css" href="./css/delete.css">
     <link rel="stylesheet" type="text/css" href="./css/responsive.css">

    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

    <title>BookShare|　削除ページ</title>



  </head>
	<body>
		<div id="main-wrapper">

			<!-- header -->
			<jsp:include page="header.jsp" />

<s:if test="#session.userPostDetailList.size() == 0">
	<p style="color:red;text-align:center;margin:0 auto;font-size:30px;padding-top:300px;">投稿された記事がありません。</p>

</s:if>
<s:else>
		<table>
		<tbody>
		       <tr>
       		<td>タイトル</td>
       		<td>投稿内容</td>
       		<td>投稿日時</td>
       		<td>投稿No.</td>
       </tr>
       <s:iterator value="#session.userPostDetailList">



		<tr>
			<td><s:property value="title"/></td>
			<td><s:property value="introduction"/></td>
			<%-- <td><s:property value="userName"/></td> --%>
			<td><s:property value="RegistDate"/></td>
			<td><s:property value="postId"/></td>

		</tr>
		</s:iterator>
		</tbody>
		</table>
		削除する記事の投稿Noを入力してください。<br>
<%-- 		<select class="form-control text-center" id="exampleFormControlSelect1">
			<option><s:iterator value="#session.userPostDetailList"><s:property value="postId"/></s:iterator></option>
		</select>
 --%>
 		同時に5つの記事が削除可能です。
 		<s:form action="DeletePostAction" method="post">
		1:<s:textfield class="form-control txt" name="deletePostId1"  type="number" ></s:textfield><br>
		2:<s:textfield class="form-control txt" name="deletePostId2"  type="number" ></s:textfield><br>
		3:<s:textfield class="form-control txt" name="deletePostId3"  type="number" ></s:textfield><br>
		4:<s:textfield class="form-control txt" name="deletePostId4"  type="number" ></s:textfield><br>
		5:<s:textfield class="form-control txt" name="deletePostId5"  type="number" ></s:textfield>
		<s:submit type="button">削除する</s:submit>
		</s:form>

</s:else>



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