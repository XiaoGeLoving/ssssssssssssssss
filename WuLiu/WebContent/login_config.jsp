<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>login_config</title>
</head>
<%
ResultSet rs=null;
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String password=request.getParameter("password");
if(name==""&&name==null&&password==""&&password==null)
{
%>
  <jsp:forward page="index.jsp"/>
<%}
else{
try
{
String sql="select * from tb_customer where Name='"+name+"' and Password='"+password+"'";
rs=connection.executeQuery(sql);
if(rs.next())
{
String Name=rs.getString("Name");
session.setAttribute("name",Name);
session.setAttribute("login","success");
%>
<script language="javascript">
alert("登录成功！！！");
window.location.href="index.jsp";
</script>
<%
}
else
{
%>
<script language="javascript">
alert("登录失败！！！");
history.back();
</script>
<%
}
}catch(Exception e)
{
System.out.println(e);
}
}
%>
<body bgcolor="#ffffff">
</body>
</html>