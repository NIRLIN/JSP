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
        String stuno=request.getParameter("stuno");
        String stuname=request.getParameter("stuname");
        String stusex=request.getParameter("stusex");
        String stuiph=request.getParameter("stuiph");
        String stuage=request.getParameter("stuage");
        String stuadr=request.getParameter("stuadr");
        out.print(stuadr);
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","123456");
        Statement stat = conn.createStatement();
        int i=0;
        if(stuname!="")
        {
            String sql="update student set stuname='"+stuname+"' where stuno='"+stuno+"'";
            i=stat.executeUpdate(sql);
        }
        if(stusex!="")
        {
            String sql="update student set stusex='"+stusex+"' where stuno='"+stuno+"'";
            i=stat.executeUpdate(sql);
        }
        if(stuiph!="")
        {
            String sql="update student set stuiph='"+stuiph+"' where stuno='"+stuno+"'";
            i=stat.executeUpdate(sql);
        }
        if(stuage!="")
        {
            String sql="update student set stuage='"+stuage+"' where stuno='"+stuno+"'";
            i=stat.executeUpdate(sql);
        }
        if(stuadr!="")
        {
            String sql="update student set stuadr='"+stuadr+"' where stuno='"+stuno+"'";
            i=stat.executeUpdate(sql);
        }
        if(i!=0){
            out.print("数据修改成功 ！即将跳转！");
        }
        stat.close();
        conn.close();
    }
    catch(Exception ex)
    {
        out.print("添加失败，错误为："+ex);
    }
%>


</body>
</html>
