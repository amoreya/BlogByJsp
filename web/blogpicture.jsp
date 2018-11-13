<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/22
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="keywords" content="海棠园">
    <meta name="description" content="海棠园">
    <link rel="stylesheet" type="text/css" href="css/blog.css"><!-- 链接css文件 -->
    <title>图片</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
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

                <h2 class="nh1"><span>您现在的位置是：<a href="blogpicture.jsp" target="_blank">图文</a></span></h2>

            </div>
        </div>
        <div class="blank1"></div>
    </div>
</div>


</body>
</body>
</html>
