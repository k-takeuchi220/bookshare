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
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <link rel="stylesheet" type="text/css" href="./css/responsive.css">


    <!-- Font-Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <title>BookShare!!</title>

<%--     <script>
	function goPostCheckAction(){
		document.getElementById("form").action="PostCheckAction";
	}


	</script> --%>
  </head>

  <body>

	<s:form id="form" name="form" action="">



    <div id="main-wrapper">
        <!-- header -->
     <%--  <jsp:include action="HeaderAction" page="header.jsp"/> --%>
      <jsp:include page="header.jsp" />
      <main>
        <!--  top-wrapper  -->
        <div class="jumbotron text-center" id="masthead">
          <div class="wrapper">
            <h1>
              Book That Changed <br>
              Your Life
            </h1>
            <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
            <s:submit type="button" onclick="goPostCheckAction()" class="btn btn-primary btn-lg" id="masthead-btn" value="投稿をみる"></s:submit>
            <p class="small">Find your best book that will help change your life.</p>
          </div>
        </div>
        <!--  features-wrapper  -->
        <div class="features-wrapper mb-5">
          <div class="container">
            <div class="features-title my-5 text-center">
            <div id="bookshareIntroduction"></div>
               <h2 id="title" class="my-3">BookShareとは</h2>
               <h4 class="conatainer-text" id="features-des">
                  Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
              </h4>
            </div>
            <div class="row text-center my-4">
              <div class="col-md-4">
                <i class="fas fa-book fa-6x my-5"></i>
                <h4>特徴</h4>
                <p class="my-4 conatainer-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                magna aliquam erat volutpat. </p>
              </div>

              <div class="col-md-4">
                <i class="fas fa-check fa-6x my-5"></i>
                <h4>ミッション</h4>
               <p class="my-4 conatainer-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                magna aliquam erat volutpat. </p>
              </div>

              <div class="col-md-4">
                <i class="fas fa-history fa-6x my-5"></i>
                <h4>設立経緯</h4>
                <p class="my-4 conatainer-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                magna aliquam erat volutpat. </p>
              </div>
            </div>
            <div class="text-center conatainer-text mb-5">
                <p>詳細につきましてはこちらの<span><a href="https://twitter.com/BookShare_Info?lang=en">公式Twitter</a></span>をご参照ください。</p>
            </div>
          </div>
        </div>
        <!--  contents-wrapper  -->
        <div class="contents-wrapper">
          <div class="container">
            <div class="contents-title text-center">
              <h2 id="title" class="my-3">投稿を見る</h2>
               <h4 class="conatainer-text" id="contents-des">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </h4>
                <s:submit type="button" onclick="goPostCheckAction()" class="btn btn-outline-dark btn-lg" id="signin-btn" value="投稿一覧へ"></s:submit>
                <h5>最新の投稿</h5>


            <div class="row border-top border-bottom border-dark mb-5 py-4" id="postContent-wrapper">
        		<div class="col-sm-4">
        			<img id="tempImage" class="img-thumbnail" src="./img/java.jpg">
        		</div>
        		<div class="col-sm-8">
        			<div class="my-3">

        			タイトル：<s:iterator value="#session.LatestTitle"><s:property /><br></s:iterator>
        			</div>
        			<div>
	        			<p class="mt-4">
	        		投稿内容：<s:iterator value="#session.LatestIntroduction"><s:property /><br></s:iterator>
	        			</p>
        			</div>
        			<div>
	        			<p class="mt-4">
	        		ユーザー名：<s:iterator value="#session.LatestUserName"><s:property /><br></s:iterator>
	        			</p>
        			</div>
        			<div>
	        			<p class="mt-4">
	        		投稿日時<s:iterator value="#session.LatestRegistDate"><s:property /><br></s:iterator>
	        			</p>
        			</div>

        		</div>
        	</div>



                <!-- <iframe src="postList.jsp" width="100%" height="250px" scrolling="no" marginwidth="0" marginheight="0" frameboder="0" style="border:none;"></iframe> -->

            </div>
          </div>
        </div>
        <!--  signin-wrapper  -->

      <s:if test="!#session.loginFlg">
        <div class="signup-wrapper">
          <div class="container text-center">
            <div class="signin-title">
              <h2 id="title" class="mb-4">無料会員登録</h2>
              <h4 class="conatainer-text">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed diam nonummy
                nibh euismod tincidunt ut laoreet. </h4>
            </div>
            <button type="button" class="btn btn-outline-dark btn-lg" id="signin-btn" onclick="location.href='signin.jsp'"><span id="btn-text">無料会員登録へ</span></button>
          </div>
        </div>
      </s:if>

      <s:else>
       <div class="signup-wrapper">
          <div class="container text-center">
            <div class="signin-title">
              <h2 id="title" class="mb-4">マイページ</h2>
              <h4 class="conatainer-text">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed diam nonummy
                nibh euismod tincidunt ut laoreet. </h4>
            </div>
            <button type="button" class="btn btn-outline-dark btn-lg" id="signin-btn" onclick="location.href='myPage.jsp'"><span id="btn-text">マイページへ</span></button>
          </div>
        </div>
      </s:else>

      </main>
      <!--  footer  -->
      <jsp:include page="footer.jsp" />
    </div>
    </s:form>
    <!-- Optional JavaScript -->
    <%-- <script src="http://code.jquery.com.jquery-1.11.1.min.js"></script> --%>

    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="./js/command.js"></script>
	<script type="text/javascript">
	$(function(){

		  // 入力キー配列
		  var input_cmd = [];
		  // コナミコマンド配列 [BOOKSHARE enter]
		  var konami_cmd = [66,79,79,75,83,72,65,82,69,13];

		  // キー入力後のキーアップイベントで発動条件を監視します
		  $(window).keyup(function(event){

		    // 入力されたキーコードを入力キー配列へ追加
		    input_cmd.push( event.keyCode );

		    // 入力されたキーが正しいか判定
		    // ※ 入力キー配列の長さで何番目の文字を比較するかを判断する
		    if ( input_cmd[ input_cmd.length - 1 ] != konami_cmd[ input_cmd.length - 1 ] ) {
		      // 入力を間違えた場合、入力キー配列をリセット（最初からやり直し）
		      input_cmd = [];
		    }
		    // 全ての入力コマンドが合致したら処理を発動
		    else if ( input_cmd.length == konami_cmd.length ) {
		      // コナミコマンドによる処理実行！
		      konami_cmd_action();
		      // 処理後、改めて入力キー配列をリセット
		      input_cmd = [];
		    }
		  });
		});

		// コナミコマンド処理関数
		function konami_cmd_action() {
	//	実行したい処理
			alert("ようこそ");
			location.href = 'premium.jsp';

		}
</script>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>