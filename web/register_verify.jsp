<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/22
  Time: 0:28
  To change this template use File | Settings | File Templates.
--%>

<%--检验是否注册成功--%>
<%@ page import= "model.Adduser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

    <%
		request.setCharacterEncoding("utf-8");
	%>

<jsp:useBean id="Adduser" class="model.Adduser"></jsp:useBean>

<jsp:setProperty property="*" name="Adduser" />

<jsp:useBean id="Adduserservice" class="service.Adduserservice"></jsp:useBean>

    <%--&lt;%&ndash;测试是否接收到传入的数据&ndash;%&gt;--%>
    <%--<%--%>
        <%--out.print(Adduser.getUsername());--%>
        <%--out.print(Adduser.getPassword());--%>
        <%--out.print(Adduser.getRepassword());--%>

    <%--%>--%>

    <%

        if(Adduserservice.addUser(Adduser)) {

    %>

    <script type="text/javascript" language="javascript">

        alert("注册成功，正在返回登录！！");

        window.location="index.jsp" ;

    </script>

    <%

        }

        else

        {
    %>

    <script type="text/javascript" language="javascript">

        alert("注册失败，正在返回注册！！");

        window.location="register.jsp" ;

    </script>

    <%

        }

    %>

</body>
</html>
