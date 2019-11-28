<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/6/8
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" import="java.sql.*"%>
<html>
<head>
    <title>添加信息</title>
    <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        a{
            text-decoration:none;
            float: right;
        }
        body{

        }
        input{
            border-radius: 3px;
        }

        .diva{
            margin-left: 620px;
            margin-top: 150px;
            height: 500px;
            width: 500px;
            opacity: 0.9;
        }

    </style>
</head>
<body>
<script>
    function buttonon() {
        stuno=document.getElementById("stuno");
        if(loginForm.stuno.value==""){
            alert("学号不能为空！");
            return;
        }
        loginForm.submit();
    }


</script>
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
                <li><a href="main.jsp">主页<span class="sr-only">(current)</span></a></li>
                <li><a href="查询信息.jsp">查询信息</a></li>
                <li><a href="添加信息.jsp">添加信息</a></li>
                <li class="active"><a href="修改信息.jsp">修改信息</a></li>
                <li><a href="删除信息.jsp">删除信息</a></li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">修改姓名</a></li>
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


<div class="diva">
    <form name="loginForm" action="修改信息ing.jsp" method="post">


        学号:<input type="text" name="stuno" placeholder=" 学号"><br><br>
        姓名:<input type="stuname" name="stuname" placeholder=" 姓名"><br><br>
        性别:
        <input type="radio" name="stusex" value="男" class="inputb" checked>男
        <input type="radio" name="stusex" value="女" class="inputb">女<br><br>
        电话:<input type="text" name="stuiph" placeholder=" 电话">
        <br><br>
        年龄:<input type="text" name="stuage" placeholder=" 年龄">
        <br><br>
        籍贯:<input type="text" name="stuadr" placeholder=" 籍贯">
        <br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" value="修改" class="inputa" onclick="buttonon()">
    </form>
</div>




<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="bootstrap-3.3.7/dist/jquery-3.4.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
