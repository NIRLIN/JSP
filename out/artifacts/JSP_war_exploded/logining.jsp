<%@ page language="java" import="java.sql.*" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>判断中。。。</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="refresh" content="3;url=main.jsp"> 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="4.jpg">
  
 <%request.setCharacterEncoding("utf-8");%>
 <% 
 try{
  String username=request.getParameter("username");
  String password=request.getParameter("password1");
  String sex=request.getParameter("sex");
  String inum=request.getParameter("inum");
  //out.println("sex="+sex);
  Class.forName("com.mysql.jdbc.Driver");
  
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","123456");
  //Statement stat = conn.createStatement();
  String sql=
  "INSERT INTO information(username,password,sex,inum) VALUES(?,?,?,?)";
  	PreparedStatement rs=conn.prepareStatement(sql);
  	
  	rs.setString(1, username);
  	rs.setString(2, password);
  	rs.setString(3, sex);
  	rs.setString(4, inum);
   int i=rs.executeUpdate();

   if(i!=0)
   {
   out.println("添加成功");
   
   }
  
   conn.close();
   rs.close();
   
   }
   catch(Exception ex)
   {
   out.print("添加失败，错误为："+ex);
   }
   %>
   

  </body>
</html>
