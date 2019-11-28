<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/6/8
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>欢迎来到学生管理系统</title>
    <style type="text/css">
      body{

        background-image: url(image/1.jpg) ;
        background-size:cover;

      }
      div{

        margin-top:250px;
        margin-left:550px;
        width:300px;
        height:300px;

      }
      input{
        background-color: silver;
        height: 28px;
        border-radius: 5px;
      }
      input:hover{
        background-color: tan;
      }
      body{
        background-color: cyan;
      }
    </style>
  </head>

  <body>

  <script type="text/javascript">
    function validate(){
      if(loginForm.username.value==""){
        alert("账号不能为空！");
        return;
      }
      if(loginForm.password.value==""){
        alert("密码不能为空！");
        return;
      }

      loginForm.submit();
    }
    function va(){
      alert("对不起！"+"\n"+"管理员身份暂时无法注册！");
    }

  </script>


  <div>
    <form name="loginForm" action="registering.jsp"  method="post">
      用户名:&nbsp<input type="text" name="username" placeholder="账户"><br><br>
      密码: &nbsp&nbsp&nbsp&nbsp<input type="password" name="password" placeholder="密码"><br><br>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <input type="button" value="登录" onclick="validate();">
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <input type="button" value="注册" onclick="va();"><br>
    </form>
  </div>
  </body>
</html>