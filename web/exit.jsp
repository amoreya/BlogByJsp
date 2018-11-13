<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/21
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>退出</title>

</head>
<body>
<%
    session.removeAttribute("user");
%>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>
