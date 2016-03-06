<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>实验室信息平台 | 主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- STYLESHEETS --><!--[if lt IE 9]>
    <script src="js/flot/excanvas.min.js"></script>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
    <link rel="stylesheet" type="text/css" href="css/cloud-admin.css">
    <link rel="stylesheet" type="text/css" href="css/themes/default.css" id="skin-switcher">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- DATE RANGE PICKER -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
    <!-- SELECT2 -->
    <link rel="stylesheet" type="text/css" href="js/select2/select2.min.css"/>
    <!-- FONTS -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- GRITTER -->
    <link rel="stylesheet" type="text/css" href="js/gritter/css/jquery.gritter.css"/>
    <!-- HUBSPOT MESSENGER -->
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-spinner.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-air.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-block.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-flat.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-future.min.css"/>
    <link rel="stylesheet" type="text/css" href="js/hubspot-messenger/css/messenger-theme-ice.min.css"/>
    <!-- DROPZONE -->
    <link rel="stylesheet" type="text/css" href="js/dropzone/dropzone.min.css"/>
</head>
<body>
<!-- HEADER -->
<header class="navbar clearfix" id="header">
    <div class="container">
        <div class="navbar-brand">
            <!-- COMPANY LOGO -->
            <a href="index.html">
                <img src="img/logo/logo.png" alt="Cloud Admin Logo" style="left: 80px;" class="img-responsive"
                     height="40" width="120">
            </a>
            <!-- /COMPANY LOGO -->
            <!-- TEAM STATUS FOR MOBILE -->
            <div class="visible-xs">
                <a href="#" class="team-status-toggle switcher btn dropdown-toggle">
                    <i class="fa fa-users"></i>
                </a>
            </div>
            <!-- /TEAM STATUS FOR MOBILE -->
            <!-- SIDEBAR COLLAPSE -->
            <div id="sidebar-collapse" class="sidebar-collapse btn">
                <i class="fa fa-bars"
                   data-icon1="fa fa-bars"
                   data-icon2="fa fa-bars"></i>
            </div>
            <!-- /SIDEBAR COLLAPSE -->
        </div>
        <!-- NAVBAR LEFT -->
        <ul class="nav navbar-nav pull-left hidden-xs" id="navbar-left">
            <li class="dropdown">
                <a href="#" class="team-status-toggle dropdown-toggle tip-bottom" data-toggle="tooltip"
                   title="Toggle Team View">
                    <i class="fa fa-users"></i>
                    <span class="name">部门成员</span>
                    <i class="fa fa-angle-down"></i>
                </a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-cog"></i>
                    <span class="name">皮肤</span>
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu skins">
                    <li class="dropdown-title">
                        <span><i class="fa fa-leaf"></i>主题皮肤</span>
                    </li>
                    <li><a href="#" data-skin="default">浅蓝色 (默认)</a></li>
                    <li><a href="#" data-skin="night">夜间色</a></li>
                    <li><a href="#" data-skin="earth">棕褐色</a></li>
                    <li><a href="#" data-skin="utopia">乌托邦</a></li>
                    <li><a href="#" data-skin="nature">自然色</a></li>
                    <li><a href="#" data-skin="graphite">灰黑色</a></li>
                </ul>
            </li>
        </ul>
        <!-- /NAVBAR LEFT -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <ul class="nav navbar-nav pull-right">
            <!-- BEGIN NOTIFICATION DROPDOWN -->
            <li class="dropdown" id="header-notification">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bell"></i>
                    <span class="badge">7</span>

                </a>
                <ul class="dropdown-menu notification">
                    <li class="dropdown-title">
                        <span><i class="fa fa-bell"></i>您有 7 条新的通知</span>
                    </li>
                    <li>
                        <a href="#">
                            <span class="label label-success"><i class="fa fa-user"></i></span>
									<span class="body">
										<span class="message">5 users online. </span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>Just now</span>
										</span>
									</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="label label-primary"><i class="fa fa-comment"></i></span>
									<span class="body">
										<span class="message">Martin commented.</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>19 mins</span>
										</span>
									</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="label label-warning"><i class="fa fa-lock"></i></span>
									<span class="body">
										<span class="message">DW1 server locked.</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>32 mins</span>
										</span>
									</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="label label-info"><i class="fa fa-twitter"></i></span>
									<span class="body">
										<span class="message">Twitter connected.</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>55 mins</span>
										</span>
									</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="label label-danger"><i class="fa fa-heart"></i></span>
									<span class="body">
										<span class="message">Jane liked. </span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>2 hrs</span>
										</span>
									</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="label label-warning"><i class="fa fa-exclamation-triangle"></i></span>
									<span class="body">
										<span class="message">Database overload.</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>6 hrs</span>
										</span>
									</span>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="#">See all notifications <i class="fa fa-arrow-circle-right"></i></a>
                    </li>
                </ul>
            </li>
            <!-- END NOTIFICATION DROPDOWN -->
            <!-- BEGIN INBOX DROPDOWN -->
            <li class="dropdown" id="header-message">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-envelope"></i>
                    <span class="badge">3</span>
                </a>
                <ul class="dropdown-menu inbox">
                    <li class="dropdown-title">
                        <span><i class="fa fa-envelope-o"></i>您有 3 条新的消息</span>
                        <span class="compose pull-right tip-right" title="Compose message"><i
                                class="fa fa-pencil-square-o"></i></span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/avatars/avatar2.jpg" alt=""/>
									<span class="body">
										<span class="from">Jane Doe</span>
										<span class="message">
										Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse mole ...
										</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>Just Now</span>
										</span>
									</span>

                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/avatars/avatar1.jpg" alt=""/>
									<span class="body">
										<span class="from">Vince Pelt</span>
										<span class="message">
										Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse mole ...
										</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>15 min ago</span>
										</span>
									</span>

                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/avatars/avatar8.jpg" alt=""/>
									<span class="body">
										<span class="from">Debby Doe</span>
										<span class="message">
										Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse mole ...
										</span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>2 hours ago</span>
										</span>
									</span>

                        </a>
                    </li>
                    <li class="footer">
                        <a href="#">See all messages <i class="fa fa-arrow-circle-right"></i></a>
                    </li>
                </ul>
            </li>
            <!-- END INBOX DROPDOWN -->
            <!-- BEGIN TODO DROPDOWN -->
            <li class="dropdown" id="header-tasks">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-tasks"></i>
                    <span class="badge">3</span>
                </a>
                <ul class="dropdown-menu tasks">
                    <li class="dropdown-title">
                        <span><i class="fa fa-check"></i>您有 3 个新任务进度</span>
                    </li>
                    <li>
                        <a href="#">
									<span class="header clearfix">
										<span class="pull-left">Software Update</span>
										<span class="pull-right">60%</span>
									</span>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
									<span class="header clearfix">
										<span class="pull-left">Software Update</span>
										<span class="pull-right">25%</span>
									</span>
                            <div class="progress">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="25"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
                                    <span class="sr-only">25% Complete</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
									<span class="header clearfix">
										<span class="pull-left">Software Update</span>
										<span class="pull-right">40%</span>
									</span>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                                    <span class="sr-only">40% Complete</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
									<span class="header clearfix">
										<span class="pull-left">Software Update</span>
										<span class="pull-right">70%</span>
									</span>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
                                    <span class="sr-only">70% Complete</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
									<span class="header clearfix">
										<span class="pull-left">Software Update</span>
										<span class="pull-right">65%</span>
									</span>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" style="width: 35%">
                                    <span class="sr-only">35% Complete (success)</span>
                                </div>
                                <div class="progress-bar progress-bar-warning" style="width: 20%">
                                    <span class="sr-only">20% Complete (warning)</span>
                                </div>
                                <div class="progress-bar progress-bar-danger" style="width: 10%">
                                    <span class="sr-only">10% Complete (danger)</span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="#">See all tasks <i class="fa fa-arrow-circle-right"></i></a>
                    </li>
                </ul>
            </li>
            <!-- END TODO DROPDOWN -->
            <!-- BEGIN USER LOGIN DROPDOWN -->
            <li class="dropdown user" id="header-user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img alt="" src="img/avatars/avatar3.jpg"/>
                    <span class="username">瞿龙俊</span>
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-user"></i> 个人资料</a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> 账号设置</a></li>
                    <li><a href="#"><i class="fa fa-eye"></i> 隐私设置</a></li>
                    <li><a href="login.html"><i class="fa fa-power-off"></i> 登出</a></li>
                </ul>
            </li>
            <!-- END USER LOGIN DROPDOWN -->
        </ul>
        <!-- END TOP NAVIGATION MENU -->
    </div>

    <!-- TEAM STATUS -->
    <div class="container team-status" id="team-status">
        <div id="scrollbar">
            <div class="handle">
            </div>
        </div>
        <div id="teamslider">
            <ul class="team-list">
                <li class="current">
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar3.jpg" alt=""/>
				  </span>
				  <span class="title">
					You
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 35%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 20%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">6</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">3</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">1</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar1.jpg" alt=""/>
				  </span>
				  <span class="title">
					Max Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 15%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 40%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 20%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">2</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">8</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">4</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar2.jpg" alt=""/>
				  </span>
				  <span class="title">
					Jane Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 65%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 10%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 15%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">10</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">3</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">4</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar4.jpg" alt=""/>
				  </span>
				  <span class="title">
					Ellie Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 5%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 48%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 27%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">1</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">6</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">2</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar5.jpg" alt=""/>
				  </span>
				  <span class="title">
					Lisa Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 21%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 20%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 40%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">4</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">5</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">9</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar6.jpg" alt=""/>
				  </span>
				  <span class="title">
					Kelly Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 45%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 21%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">6</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">3</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">1</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar7.jpg" alt=""/>
				  </span>
				  <span class="title">
					Jessy Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 7%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 30%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">1</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">6</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">2</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
				  <span class="image">
					  <img src="img/avatars/avatar8.jpg" alt=""/>
				  </span>
				  <span class="title">
					Debby Doe
				  </span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 70%">
                                <span class="sr-only">35% Complete (success)</span>
                            </div>
                            <div class="progress-bar progress-bar-warning" style="width: 20%">
                                <span class="sr-only">20% Complete (warning)</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 5%">
                                <span class="sr-only">10% Complete (danger)</span>
                            </div>
                        </div>
					<span class="status">
						<div class="field">
                            <span class="badge badge-green">13</span> completed
                            <span class="pull-right fa fa-check"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-orange">7</span> in-progress
                            <span class="pull-right fa fa-adjust"></span>
                        </div>
						<div class="field">
                            <span class="badge badge-red">1</span> pending
                            <span class="pull-right fa fa-list-ul"></span>
                        </div>
				    </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- /TEAM STATUS -->
</header>
<!--/HEADER -->

<!-- PAGE -->
<section id="page">
    <!-- SIDEBAR -->
    <div id="sidebar" class="sidebar" style="border-right: 1px solid #cdd2d2">
        <div class="sidebar-menu nav-collapse">
            <div class="divide-20"></div>
            <!-- SEARCH BAR -->
            <div id="search-bar">
                <input class="search" type="text" placeholder="搜索"><i class="fa fa-search search-icon"></i>
            </div>
            <!-- /SEARCH BAR -->

            <!-- SIDEBAR MENU -->
            <ul>
                <li>
                    <a href="index.html" target="rightFrame">
                        <i class="fa fa-home fa-fw"></i> <span class="menu-text">首页</span>
                    </a>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-bookmark-o fa-fw"></i> <span class="menu-text">个人中心</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="todo_list.html" target="rightFrame"><span
                                class="sub-menu-text">待办事项</span></a></li>
                        <li><a class="" href="notice.html" target="rightFrame"><span
                                class="sub-menu-text">发布公告</span></a></li>
                        <li><a class="" href="address_book.html" target="rightFrame"><span
                                class="sub-menu-text">通讯录</span></a></li>
                        <li><a class="" href="change_password.html" target="rightFrame"><span
                                class="sub-menu-text">密码服务</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-book fa-fw"></i> <span class="menu-text">知识中心</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="repository.html" target="rightFrame"><span
                                class="sub-menu-text">公共知识库</span></a>
                        </li>
                        <li><a class="" href="rich_text_editors.html"><span class="sub-menu-text">私有云</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-paperclip fa-fw"></i> <span class="menu-text">合同管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="agreement_create.html" target="rightFrame"><span class="sub-menu-text">合同起草</span></a>
                        </li>
                        <li><a class="" href="agreement_audit.html" target="rightFrame"><span
                                class="sub-menu-text">合同审核</span></a></li>
                        <li><a class="" href="agreement_edit.html" target="rightFrame"><span
                                class="sub-menu-text">合同变更</span></a></li>
                        <li><a class="" href="agreement_manage.html" target="rightFrame"><span class="sub-menu-text">合同管理</span></a>
                        </li>
                        <li><a class="" href="agreement_model.html" target="rightFrame"><span
                                class="sub-menu-text">合同范本</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-flask fa-fw"></i> <span class="menu-text">样品管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="sample_registration.html" target="rightFrame"><span class="sub-menu-text">样品登记</span></a></li>
                        <li><a class="" href="sample_manage.html" target="rightFrame"><span class="sub-menu-text">样品管理</span></a></li>
                        <li><a class="" href="sample_receive.html" target="rightFrame"><span class="sub-menu-text">样品接收</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-tasks fa-fw"></i> <span class="menu-text">任务管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="task_manage.html" target="rightFrame"><span class="sub-menu-text">任务管理</span></a></li>
                        <li><a class="" href="task_assign.html" target="rightFrame"><span class="sub-menu-text">任务下达</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">任务分配</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">结果登记</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">复核结果</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">审核任务</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-briefcase fa-fw"></i> <span class="menu-text">报告管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">编制报告</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">审核报告</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">签发报告</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">签收报告</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-shield fa-fw"></i> <span class="menu-text">质量统计</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">质量控制</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">实验审核</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">报告审核</span></a></li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a href="javascript:;" class="">
                        <i class="fa fa-gears fa-fw"></i> <span class="menu-text">系统管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="department_page.action" target="rightFrame"><span class="sub-menu-text">部门管理</span></a>
                        </li>
                        <li><a class="" href="authority_manage.html" target="rightFrame"><span class="sub-menu-text">权限管理</span></a>
                        </li>
                        <li><a class="" href="user_manage.html" target="rightFrame"><span
                                class="sub-menu-text">用户管理</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">流程控制</span></a></li>
                        <li><a class="" href="data_dictionary.html" target="rightFrame"><span class="sub-menu-text">数据字典</span></a></li>
                        <li><a class="" href="vector_maps.html"><span class="sub-menu-text">系统管理</span></a></li>
                    </ul>
                </li>
            </ul>
            <!-- /SIDEBAR MENU -->
        </div>
    </div>
    <!-- /SIDEBAR -->
    <div id="main-content">
        <iframe src="index.html" name="rightFrame" onload="iFrameHeight()" id="rightFrame" frameborder="no"
                scrolling="no" style="width: 100%;"></iframe>
    </div>
</section>
<!--/PAGE -->
<!-- JAVASCRIPTS -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQUERY -->
<script src="js/jquery/jquery-2.0.3.min.js"></script>
<!-- JQUERY UI-->
<script src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="bootstrap-dist/js/bootstrap.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
<!-- GRITTER -->
<script type="text/javascript" src="js/gritter/js/jquery.gritter.min.js"></script>
<!-- HUBSPOT MESSENGER -->
<script type="text/javascript" src="js/hubspot-messenger/js/messenger.min.js"></script>
<script type="text/javascript" src="js/hubspot-messenger/js/messenger-theme-flat.js"></script>
<script type="text/javascript" src="js/hubspot-messenger/js/messenger-theme-future.js"></script>
<!-- BOOTBOX -->
<script type="text/javascript" src="js/bootbox/bootbox.min.js"></script>
<!-- SELECT2 -->
<script type="text/javascript" src="js/select2/select2.min.js"></script>
<!-- DROPZONE -->
<script type="text/javascript" src="js/dropzone/dropzone.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="js/script.js"></script>
<script>
    jQuery(document).ready(function () {
        App.setPage("main");  //Set current page
        App.init(); //Initialise plugins and elements
        $('iframe').on('load', function () {
            setTimeout(function () {
                var oBody = document.getElementsByTagName('BODY').item(0);
                var oScript = document.createElement("script");
                oScript.type = "text/javascript";
                oScript.src = "js/customer/main.js";
                oBody.appendChild(oScript);
            }, 1000);
        });
        setInterval(iFrameHeight, 500);
    });
    function iFrameHeight() {
        var ifm = document.getElementById("rightFrame");
        var subWeb = document.frames ? document.frames["rightFrame"].document :
                ifm.contentDocument;
        if (ifm != null && subWeb != null) {
            ifm.height = subWeb.body.scrollHeight;
        }
    }

</script>
<!-- /JAVASCRIPTS -->
</body>
</html>