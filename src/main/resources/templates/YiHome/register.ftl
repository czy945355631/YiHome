<!DOCTYPE html>
<html class="no-js" lang="zh-CN">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Furnilife - Furniture eCommerce Bootstrap4 Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Favicon -->
	<link rel="icon" href="../YiHome/assets/images/favicon.ico">

	<!-- CSS
	============================================ -->
	<!-- Bootstrap CSS -->
	<link href="../YiHome/assets/css/bootstrap.min.css" rel="stylesheet">

	<!-- FontAwesome CSS -->
	<link href="../YiHome/assets/css/font-awesome.min.css" rel="stylesheet">

	<!-- Ionicons CSS -->
	<link href="../YiHome/assets/css/ionicons.min.css" rel="stylesheet">

	<!-- Plugins CSS -->
	<link href="../YiHome/assets/css/plugins.css" rel="stylesheet">

	<!-- Helper CSS -->
	<link href="../YiHome/assets/css/helper.css" rel="stylesheet">

	<!-- Main CSS -->
	<link href="../YiHome/assets/css/main.css" rel="stylesheet">

	<!-- Modernizer JS -->
	<script src="../YiHome/assets/js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body>
	<#include "header.ftl">
		<!--=============================================
    =            breadcrumb area         =
    =============================================-->

		<div class="breadcrumb-area pt-15 pb-15">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!--=======  breadcrumb container  =======-->

						<div class="breadcrumb-container">
							<nav>
								<ul>
									<li class="parent-page"><a href="/FgPage/goIndex">首页</a></li>
									<li>注册</li>
								</ul>
							</nav>
						</div>

						<!--=======  End of breadcrumb container  =======-->
					</div>
				</div>
			</div>
		</div>

		<!--=====  End of breadcrumb area  ======-->
    <!--=============================================
    =            Login Register page content         =
    =============================================-->

    <div class="page-section mb-50">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-xs-12 col-lg-3 mb-30">
				</div>
				<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
					<form action="/FgPage/doRegister" method="post" id="register" onsubmit="return checkRegister()">

						<div class="login-form">
							<h4 class="login-title">注册</h4>

							<div class="row">
								<div class="col-md-2 mb-0">
									<label>用户名*</label>
								</div>
								<div class="col-md-10 mb-0">
									<label style="color: red"></label>
								</div>
								<div class="col-md-12 mb-20">
									<input class="mb-0" id="registerUsername" name="userUsername" required="required" type="text">
								</div>
								<div class="col-md-2 mb-0">
									<label>邮箱*</label>
								</div>
								<div class="col-md-10 mb-0">
									<label style="color: red"></label>
								</div>
								<div class="col-md-12 mb-20">
									<input class="mb-0" id="registerEmail" name="userEmail" type="email" required="required" placeholder="邮箱">
								</div>
								<div class="col-md-2 mb-0">
									<label>密码*</label>
								</div>
								<div class="col-md-4 mb-0">
									<label style="color: red"></label>
								</div>
								<div class="col-md-6 mb-0">
									<label>确认密码</label>
								</div>
								<div class="col-md-6 mb-20">
									<input class="mb-0" id="registerPasswd" name="userPasswd" type="password" required="required" placeholder="请输入密码">
								</div>
								<div class="col-md-6 mb-20">
									<input class="mb-0" id="confirmPasswd" type="password" required="required" placeholder="请再输入一次">
								</div>
								<div class="col-12">
									<input type="submit" class="register-button mt-0" value="注册"></input>
								</div>
							</div>
						</div>

					</form>
				</div>
				<div class="col-sm-12 col-md-12 col-xs-12 col-lg-3 mb-30">
				</div>

			</div>
		</div>
	</div>

	<!--=====  End of Login Register page content  ======-->

	<#include "footer.ftl">

	<!-- JS
	============================================ -->
	<!-- jQuery JS -->
	<script src="../YiHome/assets/js/vendor/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="../YiHome/assets/js/popper.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="../YiHome/assets/js/bootstrap.min.js"></script>

	<!-- Plugins JS -->
	<script src="../YiHome/assets/js/plugins.js"></script>

	<!-- Main JS -->
	<script src="../YiHome/assets/js/main.js"></script>
	<!--MD5-->
	<script src="../YiHome/assets/js/md5.js"></script>

	<script type="text/javascript">
        // onsubmit值为true时，提交表单，否则显示错误信息
        // 生成用户名+密码组合的md5值，并设置传给后端的密码为该md5值
			function checkRegisterUsername() {
				// $.ajax()
            }
            function checkUsernameAndEmail(name,email) {
				$.ajax({
					url:"/Account/CheckUsernameAndEmail",
					type:"post",
					data:{name:name,email:email},
					success:function (data) {
						if (data == true){
						    return true;
						} else {
						    alert("用户名或Email已存在");
						    return false;
						}
                    }
				})
            }
		
            function checkRegister() {

                var name = $("#registerUsername").val();
                var email = $("#registerEmail").val();
                var pwd = $("#registerPasswd").val();
                var conpwd = $("#confirmPasswd").val();
                if (name == null) {
                    return false
                }
                if (pwd == conpwd) {
                    $("#registerPasswd").val($.md5(name+pwd))
                    $("#confirmPasswd").val($.md5(name+conpwd));
					checkUsernameAndEmail(name,email);
                } else {
                    return false;
                }
				return false;
            }

	</script>

</body>
</html>
