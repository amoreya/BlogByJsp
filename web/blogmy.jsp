<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/23
  Time: 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@page import="model.Addblog"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta name="keywords" content="海棠园">
    <meta name="description" content="海棠园">
    <link rel="stylesheet" type="text/css" href="css/blog.css"><!-- 链接css文件 -->
    <title>我的文章</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
<jsp:useBean id="Addblogservice" class="service.Addblogservice"></jsp:useBean>
<div id="background"><!-- 背景 -->
<header>
    <div class="headtop"></div><!-- 头部图片 -->

    <h  style="color:#000000">尊敬的&nbsp;${sessionScope.user.username}</h> <h  style="color: #000000">用户，欢迎您！！！</h><a href="exit.jsp" style="color:#1E90FF">注销</a>

    <div class="contenttop">

        <div class="logo f_l">海棠园个人博客</div>

        <div class="search f_r">

            <form action="https://www.baidu.com/" method="post" name="searchform" id="searchform">

                <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字'}" type="text">

                <input name="show" value="title" type="hidden">

                <input name="tempid" value="1" type="hidden">

                <input name="tbname" value="news" type="hidden">

                <input name="Submit" class="input_submit" value="搜索" type="submit">

            </form>
        </div>
    </div>

    <div class="blank"></div>

    <nav>
        <div class="navigation">

            <ul class="menu">
                <li><a href="main.jsp" style="color:#fff" >首页</a></li>
            </ul>

            <ul class="menu1">
                <li><a href="blogrecommen.jsp" style="color:#fff">推荐</a></li>
            </ul>

            <ul class="menu2">
                <li><a href="blogcharacter.jsp" style="color:#fff">文字</a></li>
            </ul>

            <ul class="menu3">
                <li><a href="blogpicture.jsp" style="color:#fff">图文</a></li>
            </ul>

            <ul class="menu4">
                <li><a href="blogsecret.jsp" style="color:#fff">心事</a></li>
            </ul>

            <ul class="menu5">
                <li><a href="blogaboutme.jsp" style="color:#fff">我的</a></li>
            </ul>
        </div>
    </nav>

</header>
<div class="container">
    <div class="con_content">
        <div class="about_box">

            <h2 class="nh1"><span>您现在的位置是：<a href="blogaboutme.jsp" target="_blank">我的>>我的文章</a></span></h2>

            <%
                List blogs = Addblogservice.queryAllStu();
                Iterator iter = blogs.iterator();

            %>


            <table>
                <tr>
                    <td>文章标题</td>
                    <td>文章描述</td>
                </tr>
                <%
                    int i = 0;
                    while (iter.hasNext()) {
                        Addblog lalala = (Addblog) iter.next();
                %>

                <tr>
                <td><%=lalala.getTitle()%></td>
                <td><%=lalala.getInfo()%></td>
                </tr>
                <%
                        i++;
                    }
                %>

            </table>










            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
    </div>
    <div class="blank1"></div>
</div>
</div>
</body>
</html>
