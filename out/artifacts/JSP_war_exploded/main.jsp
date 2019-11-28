<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/6/8
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" import="java.sql.*"%>
<html>
<head>
    <title>学生管理</title>
    <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        h1{
            text-align:center;
            color: #ff1c04;
        }
        h2{
            text-align:center;
            color: #ff1c04;
        }
        h3{
            text-align:center;
            color: #ff1c04;
        }
        body{
            background-image: url("image/back1.jpg");
        }

    </style>
</head>
<body>
<!--导航栏开始-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="main.jsp"><h4>学生信息管理</h4></a>
        </div>
        <br>




        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="main.jsp">&nbsp;&nbsp;&nbsp;主页&nbsp;&nbsp;&nbsp;<span class="sr-only">(current)</span></a></li>
                <li><a href="查询信息.jsp">&nbsp;&nbsp;&nbsp;查询信息&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="添加信息.jsp">&nbsp;&nbsp;&nbsp;添加信息&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="修改信息.jsp">&nbsp;&nbsp;&nbsp;修改信息&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="删除信息.jsp">&nbsp;&nbsp;&nbsp;删除信息&nbsp;&nbsp;&nbsp;</a></li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">修改密码</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><a href="#">帮助</a></li>
                        <li><a href="#">合作</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="#">诈骗举报</a></li>
                        <li><a href="#">关于我们</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!--导航栏结束-->


<!--主页面开始-->
<h1 >这是一个用来管理学生信息的网站</h1>
<h2>它特别粗糙</h2>
<h3>我们可以用它来</h3>
<h3>查询学生信息</h3>
<h3>添加学生信息</h3>
<h3>修改学生信息</h3>
<h3>删除学生信息</h3>
<!--主页面结束-->



<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="bootstrap-3.3.7/dist/jquery-3.4.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
