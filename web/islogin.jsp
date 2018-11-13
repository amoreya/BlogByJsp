<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/20
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@page import="model.UserTable"%>
<%@page import="service.Userservice"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    UserTable user=(UserTable)session.getAttribute("user");
    if(user==null)
    {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%} %>
