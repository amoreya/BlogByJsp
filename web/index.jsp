<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/19
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta name="keywords" content="海棠园">
    <meta name="description" content="海棠园">
    <link rel="stylesheet" type="text/css" href="css/blog.css"><!-- 链接css文件 -->
    <title>登录</title>

  </head>
  <div id="background">
      <div class="headtop"></div><!-- 头部图片 -->
      <div id="logincontainer">
        <div id="container">

      <h1 tyle="font-style:italic;">轻吟吟唱 不诉离殇</h1>

      <div class="login"><span class="login1">登录</span></div>

      <form  action="validate.jsp" name="login"  >

        <input TYPE="text" id="userName"  name ="username"   placeholder=" 用户名"><br><br>

        <input TYPE="password" id="password"   name="password" placeholder=" 请输入您的密码"><br><br>

        <button  type="submit">登录</button>

      </form>

      <div class="login">还没注册？点击<a href="register.jsp">注册</a>吧！！</div>

    </div>
    <div id="footer"><span>海棠园个人博客</span></div>
  </div>
  </div>
  </body>
</html>
