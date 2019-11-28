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
        //Statement stat = conn.createStatement();
        String sql=
                "INSERT INTO student(stuno,stuname,stusex,stuiph,stuage,stuadr) VALUES(?,?,?,?,?,?)";
        PreparedStatement rs=conn.prepareStatement(sql);

        rs.setString(1, stuno);
        rs.setString(2, stuname);
        rs.setString(3, stusex);
        rs.setString(4, stuiph);
        rs.setString(5, stuage);
        rs.setString(6, stuadr);


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
