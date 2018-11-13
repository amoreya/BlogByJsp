<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/19
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>


<%--检验登陆是否成功--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="service.Userservice" %>
<html>
<head>
    <title></title>
</head>
<body>
    <jsp:useBean id="user" class="model.UserTable"></jsp:useBean>

    <jsp:setProperty property="*" name="user" />
   <%
       Userservice us = new Userservice();

       System.out.println(us.toString());

         if(us.valiUser(user))

        {
           session.setAttribute("user",user);
         %>
            <script type="text/javascript" language="javascript">

                 alert("登陆成功！！");

                 window.location="main.jsp" ;

            </script>
    <%
        }
        else

       {
    %>
           <script type="text/javascript" language="javascript">

                 alert("用户或密码错误，请重新登录");

                 window.location="index.jsp" ;

           </script>
    <%
        }
    %>

</body>
</html>
