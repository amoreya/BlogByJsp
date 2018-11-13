<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/20
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta charset="utf-8">
    <meta name="keywords" content="海棠园">
    <meta name="description" content="海棠园">
    <link rel="stylesheet" type="text/css" href="css/blog.css"><!-- 链接css文件 -->

    <%--检查两次的密码是否一致--%>
    <script type="text/javascript">
        function formCheck(){
            var pwd1 = document.getElementById("password").value;
            var pwd2 = document.getElementById("repassword").value;
            if(pwd1!=pwd2){
                alert("两次输入的密码不一致！");
                return false;
            }
            return true;
        }
    </script>

</head>
<body>
<div id="background">

    <div class="headtop"></div><!-- 头部图片 -->

    <div id="container">

        <h1 tyle="font-style:italic;">美好的事情即将发生</h1>

        <div class="login"><sparegistern class="login1">注册</sparegistern></div>


        <%--注册的表单--%>

        <form  action="register_verify.jsp" method="post" onsubmit= "return formCheck() ">

            <input TYPE="text" id="userName"  name ="username" required="required"  placeholder=" 请输入你的用户名"><br>

            <input TYPE="password" id="password"   name="password" required="required" placeholder=" 请输入您的密码"><br><br>

            <input TYPE="password" id="repassword"   name="repassword" required="required" placeholder=" 请确认您的密码"><br><br>

            <button  TYPE="submit" >注册</button>

            <button  type="reset" >重置</button>

        </form>

       </div>
    <div id="footer"><span>海棠园个人博客</span></div>

    </div>
</div>
</body>
</html>
