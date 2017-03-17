<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<table width="786" height="114" border="0" align="center" cellpadding="0" cellspacing="0" background="image/10.jpg">
<%!
int count = 0;
public int getCount()
{

	count++;
	return count;
}
%>
<tr>
<td height="76" align="center">
<center><b>您好，您是本站第<%=getCount()%>位来访者 </b></center>
</td>

</tr>
  <tr>
    <td height="76" align="center"><a href="www.baidu.com">客户服务中心信箱：2817425028@qq.com</a>&nbsp; 客户服务中心热线直播：0432－492123266 
	<br>
	公司名称：大木有限公司&nbsp; 邮政编码：741300	<br>Copyright 2006 腾达科技<br>
	Storm&nbsp; <a href="Manager/manager_login.jsp">系统管理</a></td>
  </tr>
</table>