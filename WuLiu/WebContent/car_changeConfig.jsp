<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*,java.util.Date,java.io.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
CarMessage_change_config page
</title>
</head>

<%!
String trans(String str)
{
String result=null;
byte temp[];
try
{
temp=str.getBytes("ISO8859-1");
result=new String((temp),"utf-8");
}catch(UnsupportedEncodingException e)
{System.out.println(e.toString());}
return result;
}
%>

<%
Date date=new Date();
String sql;
ResultSet rs;
response.setContentType("text/html;charset=utf-8");
request.setCharacterEncoding("utf-8");
//respose.setCharacterEncoding("utf-8");
//、equest.setCharacterEncoding("UTF-8");
//String numbers =new String((request.getParameter("numbers")).getBytes("ISO8859-1"),"utf-8");
//String types =new String((request.getParameter("types")).getBytes("ISO8859-1"),"utf-8");
//String carname =new String((request.getParameter("carname")).getBytes("ISO8859-1"),"utf-8");
//String usetime =new String((request.getParameter("usetime")).getBytes("ISO8859-1"),"utf-8");
//String loads =new String((request.getParameter("loads")).getBytes("ISO8859-1"),"utf-8");
//String transtyle =new String((request.getParameter("transtyle")).getBytes("ISO8859-1"),"utf-8");
//String drivername =new String((request.getParameter("drivername")).getBytes("ISO8859-1"),"utf-8");
//String number =new String((request.getParameter("number")).getBytes("ISO8859-1"),"utf-8");
//String styles =new String((request.getParameter("styles")).getBytes("ISO8859-1"),"utf-8");
//String drivertime =new String((request.getParameter("drivertime")).getBytes("ISO8859-1"),"utf-8");
//String linkman =new String((request.getParameter("linkman")).getBytes("ISO8859-1"),"utf-8");
//String phone =new String((request.getParameter("phone")).getBytes("ISO8859-1"),"utf-8");
//String remark =new String((request.getParameter("remark")).getBytes("ISO8859-1"),"utf-8");
//String username =new String((request.getParameter("username")).getBytes("ISO8859-1"),"utf-8");

String numbers=trans(request.getParameter("numbers"));
String types=trans(request.getParameter("type"));
String carname=trans(request.getParameter("carname"));
String usetime=trans(request.getParameter("usetime"));
String loads=trans(request.getParameter("loads"));
String transtyle=trans(request.getParameter("transtyle"));
String drivername=trans(request.getParameter("name"));
String number=trans(request.getParameter("number"));
String styles=trans(request.getParameter("styles"));
String drivertime=trans(request.getParameter("time"));
String linkman=trans(request.getParameter("linkman"));
String phone=trans(request.getParameter("phone"));
String remark=trans(request.getParameter("remark"));
String username=trans(request.getParameter("user"));
java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update tb_carmessage set TradeMark='"+numbers+"',Brand='"+carname+"',Style='"+types+"',CarLoad='"+loads+"',UsedTime='"+
usetime+"',DriverName='"+drivername+"',DriverTime='"+drivertime+"',LicenceNumber='"+
number+"',LicenceStyle='"+styles+"',TranspotStyle='"+transtyle+"',LinkMan='"+linkman+"',LinkPhone='"+
phone+"',Remark='"+remark+"',IssueDate='"+showdate+"',UserName='"+username+"' where Code="+request.getParameter("numb");
boolean sert=connection.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("您输入的车辆信息已经修改成功！！！");
</script>
<%
response.sendRedirect("car_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的车辆信息修改失败！！！");
history.back();
</script>
<%
}
%>
<body bgcolor="#ffffff">
</body>
</html>
