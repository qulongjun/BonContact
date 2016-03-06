<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>实验室信息平台 | 登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- STYLESHEETS --><!--[if lt IE 9]>
    <script src="js/flot/excanvas.min.js"></script>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
    <link rel="stylesheet" type="text/css" href="css/cloud-admin.css">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- DATE RANGE PICKER -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
    <!-- UNIFORM -->
    <link rel="stylesheet" type="text/css" href="js/uniform/css/uniform.default.min.css"/>
    <!-- ANIMATE -->
    <link rel="stylesheet" type="text/css" href="css/animatecss/animate.min.css"/>
    <!-- FONTS -->
    <%--<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>--%>
</head>
<body class="login">
<!-- PAGE -->
<section id="page">
    <!-- HEADER -->
    <header>
        <!-- NAV-BAR -->
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo">
                        <a href="index.html"><img style="width: 200px;height: 100%" src="img/logo/logo.png" height="40"
                                                  alt="logo name"/></a>
                    </div>
                </div>
            </div>
        </div>
        <!--/NAV-BAR -->
    </header>
    <!--/HEADER -->
    <!-- LOGIN -->
    <section id="login_bg" class="visible">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-box">
                        <h2 class="bigintro">实验室信息平台</h2>
                        <div class="divide-40"></div>
                        <form role="form" id="loginForm">
                            <div class="form-group">
                                <label for="exampleInputEmail1">用户名</label>
                                <i class="fa fa-user"></i>
                                <input type="email" class="form-control" name="username" >
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">密码</label>
                                <i class="fa fa-lock"></i>
                                <input type="password" class="form-control" name="password">
                            </div>
                            <div>
                                <label class="checkbox"> <input type="checkbox" class="uniform" value="">记住密码</label>
                                <button type="button" id="loginBtn" class="btn btn-danger">登&nbsp;&nbsp;&nbsp;&nbsp;录
                                </button>
                            </div>
                        </form>
                        <div class="login-helpers">
                            <a href="#" onclick="swapScreen('forgot_bg');return false;">忘记密码?</a><br><br>
                            还没有账号?&nbsp;&nbsp; <a href="#" onclick="swapScreen('register_bg');return false;">立即注册!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/LOGIN -->
    <!-- REGISTER -->
    <section id="register_bg" class="font-400">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-box">
                        <h2 class="bigintro">注&nbsp;&nbsp;册</h2>
                        <div class="divide-40"></div>
                        <form role="form">
                            <div class="form-group">
                                <label for="exampleInputName">姓名全称</label>
                                <i class="fa fa-font"></i>
                                <input type="text" class="form-control" id="exampleInputName">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputUsername">用户名</label>
                                <i class="fa fa-user"></i>
                                <input type="text" class="form-control" id="exampleInputUsername">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">证件号码</label>
                                <i class="fa fa-credit-card"></i>
                                <input type="email" class="form-control" id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">登录密码</label>
                                <i class="fa fa-lock"></i>
                                <input type="password" class="form-control" id="exampleInputPassword1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword2">重复密码</label>
                                <i class="fa fa-check-square-o"></i>
                                <input type="password" class="form-control" id="exampleInputPassword2">
                            </div>
                            <div>
                                <button type="submit" class="btn btn-success">注&nbsp;&nbsp;&nbsp;&nbsp;册</button>
                            </div>
                        </form>
                        <div class="login-helpers">
                            <a href="#" onclick="swapScreen('login_bg');return false;">返回登录界面</a> <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/REGISTER -->
    <!-- FORGOT PASSWORD -->
    <section id="forgot_bg">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-box">
                        <h2 class="bigintro">验证信息</h2>
                        <div class="divide-40"></div>
                        <form role="form">
                            <div class="form-group">
                                <label for="exampleInputEmail1">输入您注册时填写的证件号码</label>
                                <i class="fa fa-credit-card"></i>
                                <input type="email" class="form-control" id="exampleInputEmail1">
                            </div>
                            <div>
                                <button type="submit" class="btn btn-info"
                                        onclick="swapScreen('forgot_bg2');return false;">下&nbsp;一&nbsp;步
                                </button>
                            </div>
                        </form>
                        <div class="login-helpers">
                            <a href="#" onclick="swapScreen('login_bg');return false;">返回登录界面</a> <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="forgot_bg2">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-box">
                        <h2 class="bigintro">重置密码</h2>
                        <div class="divide-40"></div>
                        <form role="form">
                            <div class="form-group">
                                <label for="exampleInputPassword1">登录密码</label>
                                <i class="fa fa-lock"></i>
                                <input type="password" class="form-control" id="exampleInputPassword1">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword2">重复密码</label>
                                <i class="fa fa-check-square-o"></i>
                                <input type="password" class="form-control" id="exampleInputPassword2">
                            </div>
                            <div>
                                <button type="submit" class="btn btn-info">完&nbsp;&nbsp;&nbsp;&nbsp;成</button>
                            </div>
                        </form>
                        <div class="login-helpers">
                            <a href="#" onclick="swapScreen('login_bg');return false;">返回登录界面</a> <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- FORGOT PASSWORD -->
</section>
<!--/PAGE -->
<!-- JAVASCRIPTS -->
<!-- JQUERY -->
<script src="js/jquery/jquery-2.0.3.min.js"></script>
<!-- JQUERY UI-->
<script src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="bootstrap-dist/js/bootstrap.min.js"></script>
<!-- UNIFORM -->
<script type="text/javascript" src="js/uniform/jquery.uniform.min.js"></script>
<!-- BACKSTRETCH -->
<script type="text/javascript" src="js/backstretch/jquery.backstretch.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
<script type="text/javascript" src="js/customer/plugin/jquery.form.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="js/script.js"></script>
<script>
    jQuery(document).ready(function () {
        App.setPage("login_bg");  //Set current page
        App.init(); //Initialise plugins and elements
        $('#loginBtn').on('click', function () {
            $.ajax({
                type:'post',
                url: "login_find.action",
                data: $('#loginForm').serialize(),
                async: false,
                success: function (data) {
                    var json = eval('('+data+')');
                    if(json.result=='true'){
                        alert('success');
                    }else{
                        alert('error');
                    }
                }
            });
        });
    });
</script>
<script type="text/javascript">
    function swapScreen(id) {
        jQuery('.visible').removeClass('visible animated fadeInUp');
        jQuery('#' + id).addClass('visible animated fadeInUp');

    }
</script>
<!-- /JAVASCRIPTS -->
</body>
</html>
