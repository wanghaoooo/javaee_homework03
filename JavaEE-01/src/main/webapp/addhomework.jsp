<%@ page import="org.example.javaee.class01.jdbc.*"%>
<%@ page import="java.util.List" %>
<%@ page import="org.example.javaee.class01.model.*"%>
<%--
  Created by IntelliJ IDEA.
  User: gaike
  Date: 2020/3/11
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>学生作业管理系统</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="apple-touch-icon-precomposed" href="static/images/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="aaa/css/amazeui.min.css" />
    <link rel="stylesheet" href="aaa/css/admin.css">
    <link rel="stylesheet" href="aaa/css/app.css">
</head>

<body data-type="generalComponents">


<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">

    </div>
    <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>


            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:">
                    <span class="tpl-header-list-user-nick">用户</span>
                </a>
                <script type="text/javascript">
                    function f1(){
                        window.location.href="/retry";
                    }

                </script>
                <ul class="am-dropdown-content">
                    <li><a onclick="f1()"><span class="am-icon-power-off"></span> 退出</a></li>
                </ul>
            </li>
            <li><a onclick="f1()" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>







<div class="tpl-page-container tpl-page-header-fixed">


    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            学生作业管理系统
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="#" class="nav-link">
                        <span>新增学生中</span>
                    </a>
                </li>

            </ul>
        </div>
    </div>





    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            学生作业管理系统
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#">老师布置作业</a></li>

        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 布置作业
                </div>


            </div>

            <div class="tpl-block">

                <div class="am-g">
                    <div class="tpl-form-body tpl-form-line">
                        <form  class="am-form tpl-form-line-form" action="/addhomework" method="post">
                            <div class="am-form-group">
                                <label for="user-name" class="am-u-sm-3 am-form-label">作业号<span class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <input type="number" class="tpl-form-input" id="user-name" placeholder="" name="hid">

                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for= "mingzi" class="am-u-sm-3 am-form-label">作业题目<span class="tpl-form-line-small-title"></span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="mingzi" placeholder="" name="htitle">

                                </div>
                            </div>




                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <input class="am-btn am-btn-primary tpl-btn-bg-color-success " type="submit" name="add" value="新增">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success" onclick="window.location.href='index.jsp'">返回</button>
                                </div>
                            </div>




                        </form>

                    </div>
                </div>
            </div>


        </div>

    </div>

</div>


<script src="aaa/js/jquery.min.js"></script>
<script src="aaa/js/amazeui.min.js"></script>
<script src="aaa/js/app.js"></script>
</body>

</html>