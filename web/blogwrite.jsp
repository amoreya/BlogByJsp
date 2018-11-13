<%--
  Created by IntelliJ IDEA.
  User: Hy
  Date: 2018/3/23
  Time: 1:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="keywords" content="海棠园">
    <meta name="description" content="海棠园">
    <link rel="stylesheet" type="text/css" href="css/blog.css"><!-- 链接css文件 -->
    <title>我的文章</title>
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

            <h2 class="nh1"><span>您现在的位置是：<a href="blogaboutme.jsp" target="_blank">我的>>发表文章</a></span></h2>

            <div class="wakaka">

            <table border="0" cellspacing="0" cellpadding="0" >
                <tr><td colspan="2"></td></tr>
                <tr>
                    <td valign="top"></td>
                    <td align="center" valign="top"> </td>

                        <form action="adddate.jsp" method="post">
                            <table border="0" cellspacing="0" cellpadding="8" style="word-break:break-all">



                                <tr>
                                    <td align="center" width="20%">文章类别：</td>
                                    <td>
                                        <select name="typeblog" style="width:5cm">
                                            <option value="1">文字</option>
                                            <option value="2">图文</option>
                                            <option value="3">心事</option>
                                        </select>
                                     <td valign="top"><br></td>
                                 </tr>


                                <tr>
                                    <td align="center">文章标题：</td>
                                    <td><input type="text" name="title" size="55"></td><td valign="top"><br></td>
                                </tr>

                                <tr>
                                    <input type="hidden" name="zuozhe" value="${sessionScope.user.username}">
                                </tr>


                                <tr>
                                    <td align="center">文章来源：</td>
                                    <td>
                                        <select name="creat" style="width:5cm">
                                            <option value="1">原创</option>
                                            <option value="0">摘自</option>
                                        </select>
                                    </td><td valign="top"><br></td>
                                </tr>

                                <tr>
                                    <td align="center">文章描述：</td>
                                    <td><input type="text" name="info" size="55"></td><td valign="top"><br></td>
                                </tr>
                                <tr>

                                    <td align="center" valign="top">文章内容：</td>
                                    <td>
                                        <textarea name="content" rows="8" cols="50"></textarea>
                                    </td><td valign="top"><br></td>
                                </tr>


                                <tr height="30">
                                    <td colspan="2" align="center">
                                        <input type="submit" value="保存">
                                        <input type="reset"   value="重置">
                                    </td><td valign="top"><br></td>
                                </tr>

                            </table>
                        </form>
                    </td>
                </tr>
                <tr><td colspan="2"></td></tr>
            </table>

            </div>















            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
    </div>
    <div class="blank1"></div>
</div>
</div>
</body>
</html>
