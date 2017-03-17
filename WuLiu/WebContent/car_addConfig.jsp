<%@ page contentType="text/html; charset=utf-8" 
import="java.util.Date"
import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
Date date=new Date();
String sql;
%>
<%
request.setCharacterEncoding("utf-8");

String TradeMark=request.getParameter("TradeMark");
String Brand=request.getParameter("Brand");
String Style=request.getParameter("Style");
String CarLoad=request.getParameter("CarLoad");
String UsedTime=request.getParameter("UsedTime");
String DriverName=request.getParameter("DriverName");
String DriverTime=request.getParameter("DriverTime");
String LicenceNumber=request.getParameter("LicenceNumber");
String LicenceStyle=request.getParameter("LicenceStyle");
String TranspotStyle=request.getParameter("TranspotStyle");
String LinkMan=request.getParameter("LinkMan");
String LinkPhone=request.getParameter("LinkPhone");
String Remark=request.getParameter("Remark");
//String gremark=request.getParameter("gremark");
java.sql.Date IssueDate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
String UserName=(String)session.getAttribute("name");
String sql="insert into tb_carmessage(TradeMark,Brand,Style,CarLoad,UsedTime,DriverName,DriverTime,LicenceNumber,LicenceStyle,TranspotStyle,LinkMan,LinkPhone,Remark,IssueDate,UserName) values('"+TradeMark+"','"+Brand+"','"+Style+"','"+CarLoad+"','"+UsedTime+"','"+DriverName+"','"+DriverTime+"','"+LicenceNumber+"','"+LicenceStyle+"','"+TranspotStyle+"','"+LinkMan+"','"+LinkPhone+"','"+Remark+"','"+IssueDate+"','"+UserName+"')";



boolean sert=connection.executeUpdata(sql);



if(sert)
{%>
<script language="javascript">
alert("您输入的车辆信息已经成功完成！！！");
</script>
<%
response.sendRedirect("car_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的车辆信息插入失败！！！");
</script>
<%
}
%>
<body bgcolor="#ffffff">


</body>
</html>