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
    <link rel="stylesheet" href="../YiHome/assets/css/jigsaw.css">

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
                                <li class="parent-page"><a href="index.html">首页</a></li>
                                <li>登录</li>
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
                <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
                    <!-- Login Form s-->
                    <form action="/FgPage/doLogin" method="post" onsubmit="return checkLogin()">

                        <div class="login-form">
                            <h4 class="login-title">登录</h4>

                            <div class="row">
                                <div class="col-md-12 col-12 mb-20">
                                    <label>用户名*</label>
                                    <input class="mb-0" id="LoginUsername" name="userUsername" type="text"
                                           placeholder="请输入用户名">
                                </div>
                                <div class="col-12 mb-20">
                                    <label>密码</label>
                                    <input class="mb-0" id="LoginUserpasswd" name="userPasswd" type="password"
                                           placeholder="请输入密码">
                                </div>
                                <#--<div class="col-md-8">-->

                                    <#--<div class="check-box d-inline-block ml-0 ml-md-2 mt-10">-->
                                        <#--<input type="checkbox" id="remember_me">-->
                                        <#--<label for="remember_me">记住我</label>-->
                                    <#--</div>-->

                                <#--</div>-->

                                <#--<div class="col-md-4 mt-10 mb-20 text-left text-md-right">-->
                                    <#--<a href="#"> 忘记密码?</a>-->
                                <#--</div>-->
                                <div id="captcha" style="right: -15px;top: -10px;"></div>
                                <div class="col-md-12">
                                    <input type="submit" class="register-button mt-0" name="登录"></input>
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
<!--jigsaw.js-->
<script src="../YiHome/assets/js/jigsaw.js"></script>
<script type="text/javascript">
    // onsubmit值为true时，提交表单，否则显示错误信息
    // 生成用户名+密码组合的md5值，并设置传给后端的密码为该md5值
    var yzm
    function checkLogin() {
        var name = $("#LoginUsername").val();
        var pwd = $("#LoginUserpasswd").val();
        if (name == null || pwd == null ||name.length == 0 ||pwd.length == 0 || name == "" || pwd == "") {
            alert("请输入完整的登录信息")
            return false;
        } else {
            if (yzm == null){
                alert("请进行验证")
                return false;
            }
            if (yzm == "false"){
                alert("请重新验证")
                return false;
            }
            pwd = $.md5(name + pwd);
            $("#LoginUserpasswd").val(pwd)
            return true;
        }
    }
    jigsaw.init({
        el: document.getElementById('captcha'),
        onSuccess: function() {
            yzm = "true";
        },
        onFail: cleanMsg,
        onRefresh: Refresh
    })
    function cleanMsg() {
        yzm = "false"
    }
    function Refresh() {
        yzm = null
    }



</script>

</body>
</html>
