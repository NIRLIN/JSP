<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
		body{
			background-image: url(music/2.jpg);
			
		}
		input{
			border-radius: 3px;
		}
		
		.diva{
			margin-left: 620px;
			margin-top: 150px;
			height: 500px;
			width: 500px;
			border: 2px solid red;
			opacity: 0.9;
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
  if(loginForm.password1.value==""||loginForm.password2.value==""){
  alert("密码不能为空！");
  return;
  }
  if(loginForm.password1.value!=loginForm.password2.value){
  alert("密码不一致！");
  return;
  }
  var result=false;
	var radios = document.getElementsByName("sex");
	if(radios[0].checked==""&&radios[1].checked=="")
	{
	alert("性别不能为空！");
	return;
	}
	
  
  if(loginForm.inum.value==""){
  alert("电话号码不能为空！");
  return;
  }
  
  
    loginForm.submit();
  }
  
  </script>
  <div class="diva">
  <form name="loginForm" action="logining.jsp" method="post">
    
    
	用户名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" placeholder=" 用户名"><br><br>
	密码:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password1" placeholder=" 密码"><br><br>
	确认密码:&nbsp;&nbsp;<input type="password" name="password2" placeholder=" 确认密码"><br><br>
	性别:&nbsp;&nbsp;
	<input type="radio" name="sex" value="男" class="inputb" >男&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" name="sex" value="女" class="inputb">女<br><br>
	电话号码:&nbsp;&nbsp;<input type="text" name="inum" placeholder=" 电话号码">
	<br><br>&nbsp;&nbsp;&nbsp;
	<input type="button" value="注册" class="inputa" onClick="validate()">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" name="chongzhi" value="重置" class="inputa" onclick="window.location.href='注册.jsp'">
	
	</form>
	</div>
  </body>
</html>
