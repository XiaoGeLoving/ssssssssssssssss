<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
删除会员
</title>
</head>
<%
String code,sql;
%>
<body bgcolor="#ffffff">
<%
 sql="delete from tb_customer where ID="+request.getParameter("id");
boolean bb=connection.executeUpdata(sql);
if(bb)
{
%>
<script language="javascript">
alert("修改成功！！！");
</script><%
response.sendRedirect("member_select.jsp");
} else
{
%>
<script language="javascript">
alert("修改失败！！！");
history.back();
</script><%
}
%>
</body>
</html>
