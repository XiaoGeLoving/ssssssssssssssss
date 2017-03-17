<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>
logout page
</title>
</head>
<body bgcolor="#ffffff">
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>
</html>
