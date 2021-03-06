<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>实验室信息平台 | 部门管理</title>
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
    <!-- BOOTSTRAP SWITCH -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-switch/bootstrap-switch.min.css"/>
    <!-- FONTS -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>

</head>
<body>
<div class="modal fade" id="box-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Box Settings</h4>
            </div>
            <div class="modal-body">
                Here goes box setting content.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
<div class="container">
    <div class="row">
        <div id="content" class="col-lg-12">
            <!-- PAGE HEADER-->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header">
                        <!-- STYLER -->

                        <!-- /STYLER -->
                        <!-- BREADCRUMBS -->
                        <ul class="breadcrumb">
                            <li>
                                <i class="fa fa-home"></i>
                                <a href="javascript:;">首页</a>
                            </li>
                            <li>
                                <a href="javascript:;">系统管理</a>
                            </li>
                            <li>部门管理</li>
                        </ul>
                        <!-- /BREADCRUMBS -->
                        <div class="clearfix">
                            <h3 class="content-title pull-left">部门管理</h3>
                        </div>
                        <div class="description">创建、管理公司的部门信息</div>
                    </div>
                </div>
            </div>
            <!-- /PAGE HEADER -->
            <!-- ORDERS -->
            <div class="row">
                <div class="col-md-12">
                    <!-- ORDERS -->
                    <div class="row">
                        <!-- ORDER SCROLL -->
                        <div class="col-md-6 ">
                            <div class="panel panel-default">
                                <div class="panel-body ">
                                    <div class="pull-right hidden-xs">
                                        <div class="btn-group">
                                            <button class="btn btn-info" id="create_department"><i
                                                    class="fa fa-file-text-o"></i> 创建部门
                                            </button>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    <div class="scroller" data-height="650px" data-always-visible="1"
                                         data-rail-visible="1">
                                        <table class="table table-hover" id="departmentTable">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <div class="text-center">部门名称</div>
                                                </th>
                                                <th>
                                                    <div class="text-center">备注</div>
                                                </th>
                                                <th>
                                                    <div class="text-center">操作</div>
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <s:iterator value="#departmentList" id="d">
                                                <tr data-id="${d.id}">
                                                    <td>
                                                        <div class="text-center">${d.name}</div>
                                                    </td>
                                                    <td>
                                                        <div class="text-center">${d.other}</div>
                                                    </td>
                                                    <td>
                                                        <div class="text-center">
                                                            <div class="btn-group">
                                                                <button class="btn btn-success btn-xs edit_department" data-id="${d.id}"><i
                                                                        class="fa fa-edit"></i> 编辑
                                                                </button>
                                                            </div>
                                                            <div class="btn-group">
                                                                <button class="btn btn-danger btn-xs del_department" data-id="${d.id}"><i
                                                                        class="fa fa-trash-o"></i> 删除
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </s:iterator>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /ORDER SCROLL -->
                        <!-- ORDER DETAILS -->
                        <div class="col-md-6" id="agreement_detail">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="make-switch switch-small" data-on="info" data-off="danger"
                                             data-label-icon="fa fa-paperclip fa-fw" data-on-label="启用"
                                             data-off-label="停用">
                                            <input type="checkbox" checked>
                                        </div>
                                    </div>
                                    <div class="pull-right hidden-xs">
                                        <div class="btn-group">
                                            <button class="btn btn-info" id="create_user_group"><i
                                                    class="fa fa-edit"></i> 新增用户组
                                            </button>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    <!--此处应该添加合同范本内容-->

                                    <table class="table table-hover" >
                                        <thead>
                                        <tr>
                                            <th>
                                                <div class="text-center">用户组名称</div>
                                            </th>
                                            <th>
                                                <div class="text-center">备注</div>
                                            </th>
                                            <th>
                                                <div class="text-center">操作</div>
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody id="userGroupBody">
                                        <s:iterator value="#userGroupList" id="u">
                                            <tr>
                                                <td>
                                                    <div class="text-center">${u.name}</div>
                                                </td>
                                                <td>
                                                    <div class="text-center">${u.other}</div>
                                                </td>
                                                <td>
                                                    <div class="text-center">
                                                        <div class="btn-group">
                                                            <button class="btn btn-success btn-xs edit_user_group" data-id="${u.id}"><i
                                                                    class="fa fa-edit"></i> 编辑
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-warning btn-xs stop_user_group" data-id="${u.id}"><i
                                                                    class="fa fa-lock"></i> 权限
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-danger btn-xs del_user_group" data-id="${u.id}"><i
                                                                    class="fa fa-trash-o"></i> 删除
                                                            </button>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </s:iterator>

                                        </tbody>
                                    </table>

                                    <!--范本内容-->
                                    <hr>
                                    <div class="text-right">
                                        <ul class="pagination">
                                            <li class="disabled">
                                                <a href="#">
                                                    <i class="fa fa-angle-left"></i>
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="#">
                                                    1
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">2</a>
                                            </li>
                                            <li>
                                                <a href="#">3</a>
                                            </li>
                                            <li>
                                                <a href="#">4</a>
                                            </li>
                                            <li>
                                                <a href="#">5</a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <!-- CUSTOMER DETAILS -->
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h4>
                                                <i class="fa fa-info-circle"></i>
                                                部门名称
                                            </h4>
                                            <div class="well">
                                                <h4>档案管理室</h4>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <h4>
                                                <i class="fa fa-info-circle"></i>
                                                备注信息
                                            </h4>
                                            <div class="well">
                                                <p>档案管理科室,负责公司内容档案的保管工作,上级来文的存档工作,与其他部分配合,实现有档可查,有根可朔.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PAYMENT STATUS -->
                                    <hr>
                                </div>
                                <!-- /PANEL BODY -->

                            </div>
                        </div>
                        <!-- /ORDER DETAILS -->


                        <!-- ORDER DETAILS  创建范本-->
                        <div class="col-md-8" id="new_agreement_model" style="display: none">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-10">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">范本标题</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"
                                                               placeholder="请输入合同范本标题">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-sm-2">
                                            <div class="pull-right hidden-xs">
                                                <div class="btn-group">
                                                    <button class="btn btn-success" id="save_model"><i
                                                            class="fa fa-save"></i>
                                                        保存范本
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="pull-left visible-xs">
                                        <div class="btn-group">
                                            <button class="btn btn-sm btn-default"><i class="fa fa-bars"></i>
                                                Fullfill selected
                                            </button>
                                            <button class="btn btn-sm btn-success"><i class="fa fa-check"></i>
                                                Mark complete
                                            </button>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    <!--此处应该添加合同范本内容-->
                                    <div id="new_create_model">
                                        <form method="post" id="saveform" name="saveform"
                                              action="/index.php?s=/index/parse.html">
                                            <input type="hidden" name="fields" id="fields" value="0">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="well well-small">
                                                        <p>
                                                            表单控件：<br/><br/>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('text');"
                                                                    class="btn btn-info">文本框
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('textarea');"
                                                                    class="btn btn-info">多行文本
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('select');"
                                                                    class="btn btn-info">下拉菜单
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('radios');"
                                                                    class="btn btn-info">单选框
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('checkboxs');"
                                                                    class="btn btn-info">复选框
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('macros');"
                                                                    class="btn btn-info">宏控件
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('progressbar');"
                                                                    class="btn btn-info">进度条
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('qrcode');"
                                                                    class="btn btn-info">二维码
                                                            </button>
                                                            <button type="button"
                                                                    onclick="leipiFormDesign.exec('listctrl');"
                                                                    class="btn btn-info">列表控件
                                                            </button>
                                                        </p>
                                                        <div class="alert">
                                                            <strong>提醒：</strong>单选框和复选框，如：<code>{|-</code>选项<code>-|}</code>两边边界是防止误删除控件，程序会把它们替换为空，请不要手动删除！
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <script id="myFormDesign" type="text/plain"
                                                            style="width:100%;"></script>
                                                </div>
                                            </div><!--end row-->
                                        </form>
                                    </div>
                                    <!--范本内容-->
                                    <hr>
                                    <!-- CUSTOMER DETAILS -->
                                    <div class="row">
                                        <div class="col-sm-10">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">备注信息</label>
                                                    <div class="col-sm-9">
                                                                <textarea class="form-control" rows="3"
                                                                          placeholder="请输入备注信息"></textarea>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                </div>
                                <!-- PAYMENT STATUS -->
                            </div>
                            <!-- /PANEL BODY -->

                        </div>
                    </div>
                    <!-- /ORDER DETAILS 创建范本 -->


                </div>
                <!-- /BOX -->
            </div>
        </div>
        <!-- /ORDERS -->
    </div><!-- /CONTENT-->
</div>
</div>
<!-- JAVASCRIPTS -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQUERY -->
<script src="js/jquery/jquery-2.0.3.min.js"></script>
<!-- JQUERY UI-->
<script src="js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="bootstrap-dist/js/bootstrap.min.js"></script>
<!-- BLOCK UI -->
<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>


<!-- DATE RANGE PICKER -->
<script src="js/bootstrap-daterangepicker/moment.min.js"></script>

<script src="js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
<!-- TIMEAGO -->
<script type="text/javascript" src="js/timeago/jquery.timeago.min.js"></script>
<!-- BLOCK UI -->
<script type="text/javascript" src="js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
<!-- ONHOVER -->
<script type="text/javascript" src="js/bootstrap-onhover/twitter-bootstrap-hover-dropdown.min.js"></script>
<!-- BOOTSTRAP SWITCH -->
<script type="text/javascript" src="js/bootstrap-switch/bootstrap-switch.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="js/jQuery-Cookie/jquery.cookie.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="js/script.js"></script>
<script>
    jQuery(document).ready(function () {
        App.setPage("agreement_midel");  //Set current page
        App.init(); //Initialise plugins and elements
        $('#create_agreement_model,#change_model,#copy_model').on('click', function () {
            $('#agreement_detail').hide();
            $('#new_agreement_model').show();
        });
        $('#agreement_model_list li,#save_model').on('click', function () {
            $('#agreement_detail').show();
            $('#new_agreement_model').hide();
        });
        $('#agreement_model_list li').on('click', function () {
            $(this).addClass('active').siblings('li').removeClass('active');
        });
    });
</script>
<!-- /JAVASCRIPTS -->
</body>
</html>