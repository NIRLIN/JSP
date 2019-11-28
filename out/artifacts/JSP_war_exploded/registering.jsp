<%@ page language="java" import="java.util.*"  import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请稍后。。。</title>
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <style>a{text-decoration:none}</style>
  </head>
  
  <body>
  
     <%
 try{
  String username=request.getParameter("username");
  String  password=request.getParameter("password");

  //out.println(username+" "+password+"<br>");

  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","123456");
  Statement sta=conn.createStatement();
  String sql=
  "select * from admin where username='"+username+"' and password='"+password+"'";
	ResultSet rs=sta.executeQuery(sql);
	//out.print(rs.next());
	if(rs.next())
	{
		out.print("登录成功");
		 response.sendRedirect("http://localhost:8080/JSP_war_exploded/main.jsp");
	}
	else
	{
	    out.print("登录失败！请重新登陆！");
		//response.sendRedirect("http://localhost:8080/JSP_war_exploded/index.jsp");
	}


   conn.close();
   }
   catch(Exception ex)
   {
   	  ex.printStackTrace();
   }
   %>
     <br>
  <a href="http://localhost:8080/JSP_war_exploded/index.jsp">点击返回</a>
  </body>
</html>
