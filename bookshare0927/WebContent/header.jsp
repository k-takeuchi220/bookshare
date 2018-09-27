<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">


	<title>header</title>
	<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
	<script>
	function goPostCheckAction(){
		document.getElementById("form").action="PostCheckAction";
	}

	function goHomeAction(){
		document.getElementById("form").action="HomeAction";
	}
	function goLoginPageAction(){
		document.getElementById("form").action="LoginPageAction";
	}


///////// ログアウト確認/////////
    function MoveCheck() {
        /* var res = confirm("ログアウトしてもいいですか"); */
        if( window.confirm("ログアウトしてもいいですか")) {
            // OKなら移動
       		location.href = "LogoutAction";
        }else {
            // キャンセルならアラートボックスを表示
           /*  alert("移動をやめまーす。"); */
           return false;
        }
    }
//////////////////////////////
</script>

<script>
      function BookshareIntroduction() {
		console.log(location.pathname);




    	   if( confirm("ページ移動してもよろしいでしょうか?")) {





    	location.href = "HomeAction?#bookshareIntroduction";

    	}else{

   	   alert("キャンセルしました。");
      }
      }
	</script>



</head>
	<body>

<!-- Strutsタグ(submit)にcssが適用されないためStyle属性で直接デザインをつけてます。 -->

	    <div class="notice top"></div>
    	<div class="notice bottom"></div>
				<header class="sticky-top">
		<s:form id="form" name="form">
	        <nav class="navbar navbar-expand-sm">
	          <div class="container">
	            <s:submit class="navbar-brand button" onclick="goHomeAction();" value="BookShare" style="color:white;background-color:#212529;border:none;opacity:0.9;"></s:submit>
	            <button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
	              <i class="fas fa-bars" id="menu-icon"></i>
	            </button>
	            <div class="collapse navbar-collapse" id="menu">
	              <ul class="navbar-nav ml-auto" id="navbarRight">
	                <li class="nav-item">
	                   <a class="nav-link button" onclick="BookshareIntroduction()"  style="color:white;background-color:#212529;border:none;opacity:0.9;"
	                   onmouseover="this.style.backgroundColor='rgba(255, 255, 255, 0.3)'"  onmouseout="this.style.backgroundColor='#212529'">Bookshareとは</a>
	                </li>
	                <li class="nav-item">
	                  <s:submit class="nav-link button" onclick="goPostCheckAction();" value="投稿を見る" style="color:white;background-color:#212529;border:none;opacity:0.9;"
	                   onmouseover="this.style.backgroundColor='rgba(255, 255, 255, 0.3)'"  onmouseout="this.style.backgroundColor='#212529'"></s:submit>
	                <s:hidden name="loginFlg"  value="%{session.loginFlg}" />
	                </li>
	                <li class="nav-item">
	                <s:if test="#session.loginFlg">
					  <a class="nav-link text-white" href="myPage.jsp">マイページ</a>
	                </s:if>
	                <s:else>
	                  <a class="nav-link text-white" href="signin.jsp">会員登録</a>
	                </s:else>
	                </li>
	                <li class="nav-item">
	                <s:if test="#session.loginFlg">
	                <a class="nav-link button" onclick="MoveCheck()" style="color:white;background-color:#212529;border:none;opacity:0.9;"
	                   onmouseover="this.style.backgroundColor='rgba(255, 255, 255, 0.3)'"  onmouseout="this.style.backgroundColor='#212529'">ログアウト</a>
	                </s:if>
	                <s:else>
	                <s:submit class="nav-link button" onclick="goLoginPageAction()" value="ログイン" style="color:white;background-color:#212529;border:none;opacity:0.9;"
	                   onmouseover="this.style.backgroundColor='rgba(255, 255, 255, 0.3)'"  onmouseout="this.style.backgroundColor='#212529'"></s:submit>
	                </s:else>
	                </li>
	              </ul>
	            </div>
	          </div>
	        </nav>
			</s:form>
	      </header>
	</body>
</html>